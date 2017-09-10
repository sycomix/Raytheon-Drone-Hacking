.class public final Lcom/crittercism/internal/bq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crittercism/internal/bq$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;

.field private d:Lcom/crittercism/internal/ch;

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/crittercism/internal/bq$a;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/crittercism/internal/bp;)V
    .locals 7

    .prologue
    .line 52
    .line 1115
    iget-object v0, p2, Lcom/crittercism/internal/bp;->l:Ljava/lang/String;

    .line 2091
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "//com.crittercism//"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2123
    iget-object v2, p2, Lcom/crittercism/internal/bp;->o:Lcom/crittercism/internal/bq$a;

    .line 2127
    iget-object v3, p2, Lcom/crittercism/internal/bp;->p:Lcom/crittercism/internal/ch;

    .line 2131
    iget v4, p2, Lcom/crittercism/internal/bp;->n:I

    .line 3119
    iget v5, p2, Lcom/crittercism/internal/bp;->m:I

    .line 3135
    iget-object v6, p2, Lcom/crittercism/internal/bp;->q:Ljava/lang/String;

    move-object v0, p0

    .line 52
    invoke-direct/range {v0 .. v6}, Lcom/crittercism/internal/bq;-><init>(Ljava/io/File;Lcom/crittercism/internal/bq$a;Lcom/crittercism/internal/ch;IILjava/lang/String;)V

    .line 60
    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lcom/crittercism/internal/bq$a;Lcom/crittercism/internal/ch;IILjava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crittercism/internal/bq;->i:Z

    .line 71
    iput-object p2, p0, Lcom/crittercism/internal/bq;->h:Lcom/crittercism/internal/bq$a;

    .line 72
    iput-object p3, p0, Lcom/crittercism/internal/bq;->d:Lcom/crittercism/internal/ch;

    .line 73
    iput p4, p0, Lcom/crittercism/internal/bq;->g:I

    .line 74
    iput p5, p0, Lcom/crittercism/internal/bq;->f:I

    .line 75
    iput-object p6, p0, Lcom/crittercism/internal/bq;->b:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/crittercism/internal/bq;->a:Ljava/io/File;

    .line 79
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 80
    invoke-direct {p0}, Lcom/crittercism/internal/bq;->d()Z

    .line 81
    invoke-direct {p0}, Lcom/crittercism/internal/bq;->h()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/crittercism/internal/bq;->e:I

    .line 82
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/bq;->c:Ljava/util/List;

    .line 83
    return-void
.end method

.method private c(Lcom/crittercism/internal/cf;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 182
    new-instance v3, Ljava/io/File;

    iget-object v1, p0, Lcom/crittercism/internal/bq;->a:Ljava/io/File;

    invoke-interface {p1}, Lcom/crittercism/internal/cf;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    const/4 v2, 0x0

    .line 185
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 193
    :goto_0
    :try_start_1
    invoke-interface {p1, v2}, Lcom/crittercism/internal/cf;->a(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 211
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 186
    :catch_0
    move-exception v1

    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not open output stream to : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/crittercism/internal/dw;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 203
    :catch_1
    move-exception v1

    .line 204
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unable to close "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 194
    :catch_2
    move-exception v1

    .line 195
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to write to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 202
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 203
    :catch_3
    move-exception v1

    .line 204
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unable to close "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 201
    :catchall_0
    move-exception v1

    .line 202
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 208
    throw v1

    .line 203
    :catch_4
    move-exception v1

    .line 204
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unable to close "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method private d()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 111
    iget-object v1, p0, Lcom/crittercism/internal/bq;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    iput-boolean v0, p0, Lcom/crittercism/internal/bq;->i:Z

    .line 114
    iget-object v1, p0, Lcom/crittercism/internal/bq;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/crittercism/internal/bq;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not a directory"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 126
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/crittercism/internal/bq;->i:Z

    if-nez v1, :cond_2

    :goto_1
    return v0

    .line 120
    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " does not exist"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private e()V
    .locals 2

    .prologue
    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/crittercism/internal/bq;->b()I

    move-result v0

    invoke-direct {p0}, Lcom/crittercism/internal/bq;->i()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 217
    invoke-direct {p0}, Lcom/crittercism/internal/bq;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    :cond_1
    return-void
.end method

.method private f()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 226
    iget-object v1, p0, Lcom/crittercism/internal/bq;->h:Lcom/crittercism/internal/bq$a;

    if-nez v1, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v0

    .line 232
    :cond_1
    iget-object v2, p0, Lcom/crittercism/internal/bq;->h:Lcom/crittercism/internal/bq$a;

    .line 5022
    invoke-direct {p0}, Lcom/crittercism/internal/bq;->g()[Ljava/io/File;

    move-result-object v3

    .line 4385
    const/4 v1, 0x0

    .line 4386
    array-length v4, v3

    iget v5, v2, Lcom/crittercism/internal/bq$a;->a:I

    if-le v4, v5, :cond_2

    .line 4387
    iget v1, v2, Lcom/crittercism/internal/bq$a;->a:I

    aget-object v1, v3, v1

    .line 234
    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private g()[Ljava/io/File;
    .locals 1

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/crittercism/internal/bq;->h()[Ljava/io/File;

    move-result-object v0

    .line 250
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 251
    return-object v0
.end method

.method private h()[Ljava/io/File;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/crittercism/internal/bq;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 257
    if-nez v0, :cond_0

    .line 258
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    .line 261
    :cond_0
    return-object v0
.end method

.method private declared-synchronized i()I
    .locals 1

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/crittercism/internal/bq;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/crittercism/internal/bq;
    .locals 7

    .prologue
    .line 99
    new-instance v0, Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/bq;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4086
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4087
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "//com.crittercism/pending/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/crittercism/internal/bq;->h:Lcom/crittercism/internal/bq$a;

    iget-object v3, p0, Lcom/crittercism/internal/bq;->d:Lcom/crittercism/internal/ch;

    iget v4, p0, Lcom/crittercism/internal/bq;->g:I

    iget v5, p0, Lcom/crittercism/internal/bq;->f:I

    iget-object v6, p0, Lcom/crittercism/internal/bq;->b:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/crittercism/internal/bq;-><init>(Ljava/io/File;Lcom/crittercism/internal/bq$a;Lcom/crittercism/internal/ch;IILjava/lang/String;)V

    return-object v0
.end method

.method public final declared-synchronized a()V
    .locals 3

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/crittercism/internal/bq;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 246
    :cond_0
    monitor-exit p0

    return-void

    .line 242
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/crittercism/internal/bq;->h()[Ljava/io/File;

    move-result-object v1

    .line 243
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 244
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/crittercism/internal/bq;)V
    .locals 7

    .prologue
    .line 292
    if-nez p1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/crittercism/internal/bq;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/crittercism/internal/bq;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 302
    if-eqz v0, :cond_0

    .line 305
    if-gez v0, :cond_3

    move-object v1, p1

    move-object v2, p0

    .line 313
    :goto_1
    monitor-enter v2

    .line 314
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :try_start_1
    invoke-direct {p0}, Lcom/crittercism/internal/bq;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p1}, Lcom/crittercism/internal/bq;->d()Z

    move-result v0

    if-nez v0, :cond_4

    .line 316
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    move-object v1, p0

    move-object v2, p1

    .line 310
    goto :goto_1

    .line 319
    :cond_4
    :try_start_3
    invoke-direct {p0}, Lcom/crittercism/internal/bq;->g()[Ljava/io/File;

    move-result-object v3

    .line 320
    const/4 v0, 0x0

    :goto_2
    array-length v4, v3

    if-ge v0, v4, :cond_5

    .line 321
    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Lcom/crittercism/internal/bq;->a:Ljava/io/File;

    aget-object v6, v3, v0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 322
    aget-object v5, v3, v0

    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 325
    :cond_5
    invoke-direct {p1}, Lcom/crittercism/internal/bq;->e()V

    .line 327
    iget-object v0, p0, Lcom/crittercism/internal/bq;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/br;

    .line 328
    invoke-interface {v0}, Lcom/crittercism/internal/br;->c()V

    goto :goto_3

    .line 330
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 331
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/crittercism/internal/bq;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 288
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 278
    :cond_1
    if-eqz p1, :cond_0

    .line 283
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/crittercism/internal/bq;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/crittercism/internal/cf;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 137
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/crittercism/internal/bq;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 141
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/crittercism/internal/bq;->e:I

    iget v2, p0, Lcom/crittercism/internal/bq;->g:I

    if-lt v1, v2, :cond_2

    .line 142
    const-string v1, "Session max reached"

    invoke-static {v1}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 146
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/crittercism/internal/bq;->b()I

    move-result v1

    .line 148
    invoke-direct {p0}, Lcom/crittercism/internal/bq;->i()I

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lcom/crittercism/internal/bq;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    :cond_3
    invoke-direct {p0}, Lcom/crittercism/internal/bq;->i()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/crittercism/internal/bq;->i:Z

    goto :goto_0

    .line 156
    :cond_4
    invoke-direct {p0, p1}, Lcom/crittercism/internal/bq;->c(Lcom/crittercism/internal/cf;)Z

    move-result v1

    .line 157
    if-eqz v1, :cond_5

    .line 158
    iget v0, p0, Lcom/crittercism/internal/bq;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/crittercism/internal/bq;->e:I

    .line 161
    :cond_5
    iget-object v2, p0, Lcom/crittercism/internal/bq;->c:Ljava/util/List;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    :try_start_3
    iget-object v0, p0, Lcom/crittercism/internal/bq;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/br;

    .line 163
    invoke-interface {v0}, Lcom/crittercism/internal/br;->b()V

    goto :goto_1

    .line 165
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v0, v1

    .line 167
    goto :goto_0
.end method

.method public final declared-synchronized b()I
    .locals 1

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/crittercism/internal/bq;->h()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/crittercism/internal/cf;)Z
    .locals 3

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/crittercism/internal/bq;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 178
    :goto_0
    monitor-exit p0

    return v0

    .line 175
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/crittercism/internal/bq;->a:Ljava/io/File;

    invoke-interface {p1}, Lcom/crittercism/internal/cf;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 178
    invoke-direct {p0, p1}, Lcom/crittercism/internal/bq;->c(Lcom/crittercism/internal/cf;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Ljava/util/List;
    .locals 5

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 337
    invoke-direct {p0}, Lcom/crittercism/internal/bq;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 348
    :cond_0
    monitor-exit p0

    return-object v0

    .line 343
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/crittercism/internal/bq;->g()[Ljava/io/File;

    move-result-object v2

    .line 344
    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 345
    iget-object v3, p0, Lcom/crittercism/internal/bq;->d:Lcom/crittercism/internal/ch;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Lcom/crittercism/internal/ch;->a(Ljava/io/File;)Lcom/crittercism/internal/bo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
