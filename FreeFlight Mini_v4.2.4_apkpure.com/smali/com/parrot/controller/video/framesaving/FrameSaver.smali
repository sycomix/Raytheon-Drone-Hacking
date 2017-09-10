.class public Lcom/parrot/controller/video/framesaving/FrameSaver;
.super Ljava/lang/Object;
.source "FrameSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;,
        Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverThread;
    }
.end annotation


# static fields
.field private static final FRAMES_FILE:Ljava/lang/String; = "frames_"

.field public static final FRAME_LOG_DIRECTORY_NAME:Ljava/lang/String; = "frames_log"

.field public static final TAG:Ljava/lang/String;

.field private static final TIMESTAMPS_FILE:Ljava/lang/String; = "timestamps_"

.field private static filesCreated:Z

.field private static frameFile:Ljava/io/File;

.field private static timestampFile:Ljava/io/File;


# instance fields
.field private frameSaverThread:Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/parrot/controller/video/framesaving/FrameSaver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/controller/video/framesaving/FrameSaver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverThread;

    const-string v1, "frameSaverThread"

    invoke-direct {v0, p0, v1}, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverThread;-><init>(Lcom/parrot/controller/video/framesaving/FrameSaver;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parrot/controller/video/framesaving/FrameSaver;->frameSaverThread:Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverThread;

    .line 38
    return-void
.end method

.method static synthetic access$000()Ljava/io/File;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/parrot/controller/video/framesaving/FrameSaver;->frameFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100()Ljava/io/File;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/parrot/controller/video/framesaving/FrameSaver;->timestampFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/parrot/controller/video/framesaving/FrameSaver;->filesCreated:Z

    return v0
.end method

.method public static createFiles(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 183
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 184
    .local v0, "date":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v9, "HH\'h\'mm\'m\'s\'s\'"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 185
    .local v3, "formatter":Ljava/text/DateFormat;
    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 187
    .local v6, "now":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "frames_log/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    .local v1, "directoryname":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_1

    .line 190
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 193
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "frames_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".mjpeg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "frameFileName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "timestamps_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".log"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 196
    .local v7, "timestampFileName":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "frames_log/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v9, Lcom/parrot/controller/video/framesaving/FrameSaver;->frameFile:Ljava/io/File;

    .line 197
    new-instance v9, Ljava/io/File;

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "frames_log/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v9, Lcom/parrot/controller/video/framesaving/FrameSaver;->timestampFile:Ljava/io/File;

    .line 199
    sget-object v9, Lcom/parrot/controller/video/framesaving/FrameSaver;->frameFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 201
    sget-object v9, Lcom/parrot/controller/video/framesaving/FrameSaver;->frameFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 204
    :cond_2
    sget-object v9, Lcom/parrot/controller/video/framesaving/FrameSaver;->timestampFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 206
    sget-object v9, Lcom/parrot/controller/video/framesaving/FrameSaver;->timestampFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 209
    :cond_3
    const/4 v9, 0x1

    sput-boolean v9, Lcom/parrot/controller/video/framesaving/FrameSaver;->filesCreated:Z

    .line 211
    new-instance v5, Ljava/io/RandomAccessFile;

    sget-object v9, Lcom/parrot/controller/video/framesaving/FrameSaver;->frameFile:Ljava/io/File;

    const-string v10, "rw"

    invoke-direct {v5, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    .local v5, "frameRandomAccessFile":Ljava/io/RandomAccessFile;
    const-wide/16 v10, 0x0

    invoke-virtual {v5, v10, v11}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 213
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 214
    new-instance v8, Ljava/io/RandomAccessFile;

    sget-object v9, Lcom/parrot/controller/video/framesaving/FrameSaver;->timestampFile:Ljava/io/File;

    const-string v10, "rw"

    invoke-direct {v8, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 215
    .local v8, "timestampRandomAccessFile":Ljava/io/RandomAccessFile;
    const-wide/16 v10, 0x0

    invoke-virtual {v8, v10, v11}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 216
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "directoryname":Ljava/io/File;
    .end local v3    # "formatter":Ljava/text/DateFormat;
    .end local v4    # "frameFileName":Ljava/lang/String;
    .end local v5    # "frameRandomAccessFile":Ljava/io/RandomAccessFile;
    .end local v6    # "now":Ljava/lang/String;
    .end local v7    # "timestampFileName":Ljava/lang/String;
    .end local v8    # "timestampRandomAccessFile":Ljava/io/RandomAccessFile;
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v2

    .line 221
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isLogActivated(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 175
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "frames_log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    .local v0, "directoryName":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public areFilesCreated()Z
    .locals 1

    .prologue
    .line 147
    sget-boolean v0, Lcom/parrot/controller/video/framesaving/FrameSaver;->filesCreated:Z

    return v0
.end method

.method public saveFrame(Lcom/parrot/controller/stream/ARFrame;)V
    .locals 8
    .param p1, "frame"    # Lcom/parrot/controller/stream/ARFrame;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 153
    iget-object v2, p0, Lcom/parrot/controller/video/framesaving/FrameSaver;->frameSaverThread:Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverThread;

    invoke-virtual {v2}, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverThread;->getFrameSaverHandler()Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;

    move-result-object v0

    .line 154
    .local v0, "frameSaverHandler":Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 158
    .local v1, "message":Landroid/os/Message;
    new-instance v2, Lcom/parrot/controller/video/framesaving/FrameMessage;

    invoke-virtual {p1}, Lcom/parrot/controller/stream/ARFrame;->getByteData()[B

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "line.separator"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/parrot/controller/video/framesaving/FrameMessage;-><init>([BLjava/lang/String;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    invoke-virtual {v0, v1}, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverHandler;->sendMessage(Landroid/os/Message;)Z

    .line 161
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public startSavingFrames()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/parrot/controller/video/framesaving/FrameSaver;->frameSaverThread:Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverThread;

    invoke-virtual {v0}, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverThread;->start()V

    .line 166
    return-void
.end method

.method public stopSavingFrames()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/parrot/controller/video/framesaving/FrameSaver;->frameSaverThread:Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverThread;

    invoke-virtual {v0}, Lcom/parrot/controller/video/framesaving/FrameSaver$FrameSaverThread;->quit()Z

    .line 171
    return-void
.end method
