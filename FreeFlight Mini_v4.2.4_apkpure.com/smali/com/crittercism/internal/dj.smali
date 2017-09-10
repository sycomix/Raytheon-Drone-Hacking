.class public final Lcom/crittercism/internal/dj;
.super Lcom/crittercism/internal/di;


# instance fields
.field private a:Lcom/crittercism/internal/cw;

.field private b:Lcom/crittercism/internal/dc;

.field private c:Z

.field private d:Lcom/crittercism/internal/cy;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/cw;Lcom/crittercism/internal/dc;Lcom/crittercism/internal/cy;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/crittercism/internal/dj;-><init>(Lcom/crittercism/internal/cw;Lcom/crittercism/internal/dc;ZLcom/crittercism/internal/cy;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/crittercism/internal/cw;Lcom/crittercism/internal/dc;ZLcom/crittercism/internal/cy;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/crittercism/internal/di;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/crittercism/internal/dj;->a:Lcom/crittercism/internal/cw;

    .line 44
    iput-object p2, p0, Lcom/crittercism/internal/dj;->b:Lcom/crittercism/internal/dc;

    .line 45
    iput-boolean p3, p0, Lcom/crittercism/internal/dj;->c:Z

    .line 47
    iput-object p4, p0, Lcom/crittercism/internal/dj;->d:Lcom/crittercism/internal/cy;

    .line 48
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const/4 v4, -0x1

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    const/4 v2, 0x0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/dj;->b:Lcom/crittercism/internal/dc;

    invoke-virtual {v0}, Lcom/crittercism/internal/dc;->a()Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v5

    .line 81
    if-nez v5, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/crittercism/internal/dj;->a:Lcom/crittercism/internal/cw;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/crittercism/internal/cw;->a(Ljava/io/OutputStream;)V

    .line 96
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v3

    .line 98
    :try_start_2
    iget-boolean v0, p0, Lcom/crittercism/internal/dj;->c:Z

    if-eqz v0, :cond_3

    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1053
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1054
    :goto_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->read()I

    move-result v7

    if-eq v7, v4, :cond_2

    .line 1055
    int-to-char v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 101
    :catch_0
    move-exception v0

    move-object v9, v0

    move v0, v3

    move-object v3, v9

    .line 102
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "UnsupportedEncodingException in proceed(): "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 103
    invoke-static {v3}, Lcom/crittercism/internal/dw;->a(Ljava/lang/Throwable;)V

    move v9, v2

    move v2, v0

    move v0, v9

    .line 115
    :goto_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 121
    iget-object v3, p0, Lcom/crittercism/internal/dj;->d:Lcom/crittercism/internal/cy;

    if-eqz v3, :cond_0

    .line 122
    iget-object v3, p0, Lcom/crittercism/internal/dj;->d:Lcom/crittercism/internal/cy;

    invoke-interface {v3, v0, v2, v1}, Lcom/crittercism/internal/cy;->a(ZILorg/json/JSONObject;)V

    goto :goto_0

    .line 1057
    :cond_2
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 1059
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1060
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    move-object v1, v0

    move v0, v2

    move v2, v3

    .line 113
    goto :goto_3

    .line 104
    :catch_1
    move-exception v0

    move v2, v4

    .line 105
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SocketTimeoutException in proceed(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x1

    .line 113
    goto :goto_3

    .line 107
    :catch_2
    move-exception v0

    move-object v3, v0

    move v0, v4

    .line 108
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "IOException in proceed(): "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 109
    invoke-static {v3}, Lcom/crittercism/internal/dw;->a(Ljava/lang/Throwable;)V

    move v9, v2

    move v2, v0

    move v0, v9

    .line 113
    goto :goto_3

    .line 110
    :catch_3
    move-exception v0

    move-object v3, v0

    move v0, v4

    .line 111
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "JSONException in proceed(): "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 112
    invoke-static {v3}, Lcom/crittercism/internal/dw;->a(Ljava/lang/Throwable;)V

    move v9, v2

    move v2, v0

    move v0, v9

    goto :goto_3

    .line 110
    :catch_4
    move-exception v0

    move-object v9, v0

    move v0, v3

    move-object v3, v9

    goto :goto_7

    .line 107
    :catch_5
    move-exception v0

    move-object v9, v0

    move v0, v3

    move-object v3, v9

    goto :goto_6

    .line 104
    :catch_6
    move-exception v0

    move v2, v3

    goto :goto_5

    .line 101
    :catch_7
    move-exception v0

    move-object v3, v0

    move v0, v4

    goto/16 :goto_2

    .line 77
    :catch_8
    move-exception v0

    goto/16 :goto_0

    .line 74
    :catch_9
    move-exception v0

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_4
.end method
