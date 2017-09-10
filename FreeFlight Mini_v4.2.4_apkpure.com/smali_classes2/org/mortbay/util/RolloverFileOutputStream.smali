.class public Lorg/mortbay/util/RolloverFileOutputStream;
.super Ljava/io/FilterOutputStream;
.source "RolloverFileOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/util/RolloverFileOutputStream$1;,
        Lorg/mortbay/util/RolloverFileOutputStream$RollTask;
    }
.end annotation


# static fields
.field static final YYYY_MM_DD:Ljava/lang/String; = "yyyy_mm_dd"

.field private static __rollover:Ljava/util/Timer;

.field static class$org$mortbay$util$RolloverFileOutputStream:Ljava/lang/Class;


# instance fields
.field private _append:Z

.field private _file:Ljava/io/File;

.field private _fileBackupFormat:Ljava/text/SimpleDateFormat;

.field private _fileDateFormat:Ljava/text/SimpleDateFormat;

.field private _filename:Ljava/lang/String;

.field private _retainDays:I

.field private _rollTask:Lorg/mortbay/util/RolloverFileOutputStream$RollTask;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x1

    const-string v1, "ROLLOVERFILE_RETAIN_DAYS"

    const/16 v2, 0x1f

    invoke-static {v1, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/mortbay/util/RolloverFileOutputStream;-><init>(Ljava/lang/String;ZI)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const-string v0, "ROLLOVERFILE_RETAIN_DAYS"

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/mortbay/util/RolloverFileOutputStream;-><init>(Ljava/lang/String;ZI)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .param p3, "retainDays"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mortbay/util/RolloverFileOutputStream;-><init>(Ljava/lang/String;ZILjava/util/TimeZone;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZILjava/util/TimeZone;)V
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .param p3, "retainDays"    # I
    .param p4, "zone"    # Ljava/util/TimeZone;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 112
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/mortbay/util/RolloverFileOutputStream;-><init>(Ljava/lang/String;ZILjava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZILjava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .param p3, "retainDays"    # I
    .param p4, "zone"    # Ljava/util/TimeZone;
    .param p5, "dateFormat"    # Ljava/lang/String;
    .param p6, "backupFormat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0, v1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 137
    if-nez p5, :cond_0

    .line 138
    const-string v1, "ROLLOVERFILE_DATE_FORMAT"

    const-string v2, "yyyy_MM_dd"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 139
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_fileDateFormat:Ljava/text/SimpleDateFormat;

    .line 141
    if-nez p6, :cond_1

    .line 142
    const-string v1, "ROLLOVERFILE_BACKUP_FORMAT"

    const-string v2, "HHmmssSSS"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 143
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_fileBackupFormat:Ljava/text/SimpleDateFormat;

    .line 145
    iget-object v1, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_fileBackupFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 146
    iget-object v1, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_fileDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 148
    if-eqz p1, :cond_2

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 152
    const/4 p1, 0x0

    .line 154
    :cond_2
    if-nez p1, :cond_3

    .line 155
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid filename"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_3
    iput-object p1, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_filename:Ljava/lang/String;

    .line 158
    iput-boolean p2, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_append:Z

    .line 159
    iput p3, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_retainDays:I

    .line 160
    invoke-direct {p0}, Lorg/mortbay/util/RolloverFileOutputStream;->setFile()V

    .line 162
    sget-object v1, Lorg/mortbay/util/RolloverFileOutputStream;->class$org$mortbay$util$RolloverFileOutputStream:Ljava/lang/Class;

    if-nez v1, :cond_5

    const-string v1, "org.mortbay.util.RolloverFileOutputStream"

    invoke-static {v1}, Lorg/mortbay/util/RolloverFileOutputStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/util/RolloverFileOutputStream;->class$org$mortbay$util$RolloverFileOutputStream:Ljava/lang/Class;

    move-object v7, v1

    :goto_0
    monitor-enter v7

    .line 164
    :try_start_0
    sget-object v1, Lorg/mortbay/util/RolloverFileOutputStream;->__rollover:Ljava/util/Timer;

    if-nez v1, :cond_4

    .line 165
    new-instance v1, Ljava/util/Timer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Z)V

    sput-object v1, Lorg/mortbay/util/RolloverFileOutputStream;->__rollover:Ljava/util/Timer;

    .line 167
    :cond_4
    new-instance v1, Lorg/mortbay/util/RolloverFileOutputStream$RollTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/mortbay/util/RolloverFileOutputStream$RollTask;-><init>(Lorg/mortbay/util/RolloverFileOutputStream;Lorg/mortbay/util/RolloverFileOutputStream$1;)V

    iput-object v1, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_rollTask:Lorg/mortbay/util/RolloverFileOutputStream$RollTask;

    .line 169
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 170
    .local v6, "now":Ljava/util/Calendar;
    invoke-virtual {v6, p4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 172
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/util/GregorianCalendar;-><init>(IIIII)V

    .line 177
    .local v0, "midnight":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p4}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 178
    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 179
    sget-object v1, Lorg/mortbay/util/RolloverFileOutputStream;->__rollover:Ljava/util/Timer;

    iget-object v2, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_rollTask:Lorg/mortbay/util/RolloverFileOutputStream$RollTask;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v3

    const-wide/32 v4, 0x5265c00

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 180
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    return-void

    .line 162
    .end local v0    # "midnight":Ljava/util/GregorianCalendar;
    .end local v6    # "now":Ljava/util/Calendar;
    :cond_5
    sget-object v1, Lorg/mortbay/util/RolloverFileOutputStream;->class$org$mortbay$util$RolloverFileOutputStream:Ljava/lang/Class;

    move-object v7, v1

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static access$100(Lorg/mortbay/util/RolloverFileOutputStream;)V
    .locals 0
    .param p0, "x0"    # Lorg/mortbay/util/RolloverFileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/mortbay/util/RolloverFileOutputStream;->setFile()V

    return-void
.end method

.method static access$200(Lorg/mortbay/util/RolloverFileOutputStream;)V
    .locals 0
    .param p0, "x0"    # Lorg/mortbay/util/RolloverFileOutputStream;

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/mortbay/util/RolloverFileOutputStream;->removeOldFiles()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 162
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private removeOldFiles()V
    .locals 20

    .prologue
    .line 249
    move-object/from16 v0, p0

    iget v15, v0, Lorg/mortbay/util/RolloverFileOutputStream;->_retainDays:I

    if-lez v15, :cond_0

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 253
    .local v10, "now":J
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mortbay/util/RolloverFileOutputStream;->_filename:Ljava/lang/String;

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .local v6, "file":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v4, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    .local v4, "dir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 256
    .local v7, "fn":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    const-string v16, "yyyy_mm_dd"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 257
    .local v13, "s":I
    if-gez v13, :cond_1

    .line 275
    .end local v4    # "dir":Ljava/io/File;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fn":Ljava/lang/String;
    .end local v10    # "now":J
    .end local v13    # "s":I
    :cond_0
    return-void

    .line 259
    .restart local v4    # "dir":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "fn":Ljava/lang/String;
    .restart local v10    # "now":J
    .restart local v13    # "s":I
    :cond_1
    const/4 v15, 0x0

    invoke-virtual {v7, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 260
    .local v12, "prefix":Ljava/lang/String;
    const-string v15, "yyyy_mm_dd"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v13

    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 262
    .local v14, "suffix":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    .line 263
    .local v9, "logList":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v15, v9

    if-ge v8, v15, :cond_0

    .line 265
    aget-object v7, v9, v8

    .line 266
    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v15

    if-ltz v15, :cond_2

    .line 268
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 269
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 270
    .local v2, "date":J
    sub-long v16, v10, v2

    const-wide/32 v18, 0x5265c00

    div-long v16, v16, v18

    move-object/from16 v0, p0

    iget v15, v0, Lorg/mortbay/util/RolloverFileOutputStream;->_retainDays:I

    int-to-long v0, v15

    move-wide/from16 v18, v0

    cmp-long v15, v16, v18

    if-lez v15, :cond_2

    .line 271
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 263
    .end local v2    # "date":J
    .end local v5    # "f":Ljava/io/File;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private declared-synchronized setFile()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_filename:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_filename:Ljava/lang/String;

    .line 210
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    iget-object v6, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_filename:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .restart local v1    # "file":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-nez v6, :cond_1

    .line 213
    :cond_0
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Cannot write log directory "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 215
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 218
    .local v4, "now":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "filename":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "yyyy_mm_dd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 220
    .local v3, "i":I
    if-ltz v3, :cond_2

    .line 222
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_fileDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "yyyy_mm_dd"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 228
    .restart local v1    # "file":Ljava/io/File;
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-nez v6, :cond_3

    .line 229
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Cannot write log file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 232
    :cond_3
    iget-object v6, p0, Lorg/mortbay/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_file:Ljava/io/File;

    invoke-virtual {v1, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 235
    :cond_4
    iput-object v1, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_file:Ljava/io/File;

    .line 236
    iget-boolean v6, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_append:Z

    if-nez v6, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 237
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_fileBackupFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 238
    :cond_5
    iget-object v5, p0, Lorg/mortbay/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    .line 239
    .local v5, "oldOut":Ljava/io/OutputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_append:Z

    invoke-direct {v6, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v6, p0, Lorg/mortbay/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    .line 240
    if-eqz v5, :cond_6

    .line 241
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    .end local v5    # "oldOut":Ljava/io/OutputStream;
    :cond_6
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    sget-object v0, Lorg/mortbay/util/RolloverFileOutputStream;->class$org$mortbay$util$RolloverFileOutputStream:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.mortbay.util.RolloverFileOutputStream"

    invoke-static {v0}, Lorg/mortbay/util/RolloverFileOutputStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/RolloverFileOutputStream;->class$org$mortbay$util$RolloverFileOutputStream:Ljava/lang/Class;

    :goto_0
    monitor-enter v0

    .line 299
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lorg/mortbay/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    .line 303
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_file:Ljava/io/File;

    .line 306
    iget-object v1, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_rollTask:Lorg/mortbay/util/RolloverFileOutputStream$RollTask;

    invoke-virtual {v1}, Lorg/mortbay/util/RolloverFileOutputStream$RollTask;->cancel()Z

    .line 307
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 308
    return-void

    .line 297
    :cond_0
    sget-object v0, Lorg/mortbay/util/RolloverFileOutputStream;->class$org$mortbay$util$RolloverFileOutputStream:Ljava/lang/Class;

    goto :goto_0

    .line 302
    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lorg/mortbay/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    .line 303
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_file:Ljava/io/File;

    .line 302
    throw v1

    .line 307
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getDatedFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_file:Ljava/io/File;

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 194
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_filename:Ljava/lang/String;

    return-object v0
.end method

.method public getRetainDays()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_retainDays:I

    return v0
.end method

.method public write([B)V
    .locals 1
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lorg/mortbay/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 282
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lorg/mortbay/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 289
    return-void
.end method
