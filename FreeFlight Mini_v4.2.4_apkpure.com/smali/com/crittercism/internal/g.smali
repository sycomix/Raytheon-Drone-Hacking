.class public final Lcom/crittercism/internal/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/f;
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Landroid/os/ConditionVariable;

.field public volatile b:J

.field private c:Ljava/util/List;

.field private d:Ljava/net/URL;

.field private e:J

.field private f:Landroid/os/ConditionVariable;

.field private g:Lcom/crittercism/internal/ar;

.field private volatile h:Z

.field private final i:Ljava/lang/Object;

.field private j:I


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/ar;Ljava/net/URL;)V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/crittercism/internal/g;-><init>(Lcom/crittercism/internal/ar;Ljava/net/URL;B)V

    .line 110
    return-void
.end method

.method private constructor <init>(Lcom/crittercism/internal/ar;Ljava/net/URL;B)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x2710

    const/16 v3, 0x32

    const/4 v2, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/g;->c:Ljava/util/List;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/internal/g;->d:Ljava/net/URL;

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crittercism/internal/g;->e:J

    .line 76
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/crittercism/internal/g;->f:Landroid/os/ConditionVariable;

    .line 88
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/crittercism/internal/g;->a:Landroid/os/ConditionVariable;

    .line 95
    iput-boolean v2, p0, Lcom/crittercism/internal/g;->h:Z

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/g;->i:Ljava/lang/Object;

    .line 103
    iput v3, p0, Lcom/crittercism/internal/g;->j:I

    .line 106
    iput-wide v4, p0, Lcom/crittercism/internal/g;->b:J

    .line 124
    iput-object p1, p0, Lcom/crittercism/internal/g;->g:Lcom/crittercism/internal/ar;

    .line 125
    iput-object p2, p0, Lcom/crittercism/internal/g;->d:Ljava/net/URL;

    .line 126
    iput v3, p0, Lcom/crittercism/internal/g;->j:I

    .line 127
    iput-wide v4, p0, Lcom/crittercism/internal/g;->b:J

    .line 128
    return-void
.end method

.method private a()J
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    .line 244
    iget-wide v2, p0, Lcom/crittercism/internal/g;->b:J

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/crittercism/internal/g;->e:J

    sub-long/2addr v4, v6

    .line 247
    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    .line 250
    sub-long/2addr v2, v4

    .line 252
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 258
    :goto_0
    iget-wide v2, p0, Lcom/crittercism/internal/g;->b:J

    .line 260
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method private static a(Ljava/net/HttpURLConnection;Lorg/json/JSONObject;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 342
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 343
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 344
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 345
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 367
    const/16 v2, 0xca

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    .line 355
    :catch_0
    move-exception v1

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Request failed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/crittercism/internal/dw;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 359
    :catch_1
    move-exception v1

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Request failed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/crittercism/internal/dw;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b()Ljava/net/HttpURLConnection;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 274
    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/crittercism/internal/g;->d:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 278
    const/16 v2, 0x9c4

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 279
    const-string v2, "User-Agent"

    const-string v3, "5.6.4"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 282
    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 295
    instance-of v2, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_1

    .line 296
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    .line 297
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 298
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 299
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    .line 300
    if-eqz v3, :cond_1

    .line 302
    instance-of v5, v3, Lcom/crittercism/internal/p;

    if-eqz v5, :cond_0

    .line 303
    check-cast v3, Lcom/crittercism/internal/p;

    invoke-virtual {v3}, Lcom/crittercism/internal/p;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    .line 305
    :cond_0
    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 317
    :cond_1
    :goto_0
    return-object v1

    .line 308
    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v4

    .line 309
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to instantiate URLConnection to APM server: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :catch_1
    move-exception v1

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to instantiate URLConnection to APM server: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;)V

    move-object v1, v4

    .line 314
    goto :goto_0

    .line 308
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/crittercism/internal/g;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/crittercism/internal/g;->j:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/crittercism/internal/c;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 379
    invoke-direct {p0}, Lcom/crittercism/internal/g;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 396
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/crittercism/internal/g;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 385
    :try_start_0
    invoke-direct {p0}, Lcom/crittercism/internal/g;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 388
    monitor-exit v1

    goto :goto_0

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 391
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/crittercism/internal/g;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2407
    iget-object v2, p0, Lcom/crittercism/internal/g;->d:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 2409
    invoke-virtual {p1}, Lcom/crittercism/internal/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 393
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 394
    iget-object v0, p0, Lcom/crittercism/internal/g;->f:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 396
    :cond_3
    monitor-exit v1

    goto :goto_0

    .line 3327
    :cond_4
    iget-object v2, p1, Lcom/crittercism/internal/c;->f:Ljava/lang/String;

    .line 2425
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "connect"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 2433
    :cond_5
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 142
    .line 1160
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/crittercism/internal/g;->h:Z

    if-nez v0, :cond_1

    .line 1162
    iget-object v0, p0, Lcom/crittercism/internal/g;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 1163
    iget-object v0, p0, Lcom/crittercism/internal/g;->f:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 1165
    iget-boolean v0, p0, Lcom/crittercism/internal/g;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    .line 1170
    :try_start_1
    invoke-direct {p0}, Lcom/crittercism/internal/g;->a()J

    move-result-wide v0

    .line 1172
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1173
    invoke-direct {p0}, Lcom/crittercism/internal/g;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1177
    :cond_0
    :goto_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crittercism/internal/g;->e:J

    .line 1178
    invoke-direct {p0}, Lcom/crittercism/internal/g;->b()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 1180
    if-nez v0, :cond_2

    .line 1181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/internal/g;->h:Z

    .line 1182
    const-string v0, "Disabling APM due to failure instantiating connection"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;)V

    .line 1198
    :cond_1
    :goto_2
    return-void

    .line 1187
    :cond_2
    iget-object v1, p0, Lcom/crittercism/internal/g;->i:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1188
    :try_start_3
    iget-object v2, p0, Lcom/crittercism/internal/g;->c:Ljava/util/List;

    .line 1189
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/crittercism/internal/g;->c:Ljava/util/List;

    .line 1190
    iget-object v3, p0, Lcom/crittercism/internal/g;->f:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->close()V

    .line 1191
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1193
    :try_start_4
    iget-object v1, p0, Lcom/crittercism/internal/g;->g:Lcom/crittercism/internal/ar;

    invoke-static {v1, v2}, Lcom/crittercism/internal/a;->a(Lcom/crittercism/internal/ar;Ljava/util/List;)Lcom/crittercism/internal/a;

    move-result-object v1

    .line 1195
    if-nez v1, :cond_3

    .line 1196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/internal/g;->h:Z

    .line 1197
    const-string v0, "Disabling APM due to failure building request"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 143
    :catch_0
    move-exception v0

    .line 148
    const-string v1, "Crittercism"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exited APM send task due to: \n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1191
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 2082
    :cond_3
    iget-object v1, v1, Lcom/crittercism/internal/a;->a:Lorg/json/JSONObject;

    .line 1201
    invoke-static {v0, v1}, Lcom/crittercism/internal/g;->a(Ljava/net/HttpURLConnection;Lorg/json/JSONObject;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
