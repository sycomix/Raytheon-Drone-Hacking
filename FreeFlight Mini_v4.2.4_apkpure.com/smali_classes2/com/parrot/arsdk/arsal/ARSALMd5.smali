.class public Lcom/parrot/arsdk/arsal/ARSALMd5;
.super Ljava/lang/Object;
.source "ARSALMd5.java"


# static fields
.field public static final MD5_LENGTH:I = 0x10

.field private static final TAG:Ljava/lang/String; = "Md5"


# instance fields
.field private digest:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALMd5;->digest:Ljava/security/MessageDigest;

    .line 52
    invoke-direct {p0}, Lcom/parrot/arsdk/arsal/ARSALMd5;->initialize()Z

    .line 53
    return-void
.end method

.method private initialize()Z
    .locals 4

    .prologue
    .line 57
    const/4 v1, 0x1

    .line 60
    .local v1, "ret":Z
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALMd5;->digest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return v1

    .line 62
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "Md5"

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public check(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "md5Txt"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "md5":[B
    const/4 v1, 0x0

    .line 88
    .local v1, "result":Z
    invoke-virtual {p0, p1}, Lcom/parrot/arsdk/arsal/ARSALMd5;->compute(Ljava/lang/String;)[B

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 92
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {p0, v0, v2, v3}, Lcom/parrot/arsdk/arsal/ARSALMd5;->getTextDigest([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 94
    const/4 v1, 0x1

    .line 98
    :cond_0
    return v1
.end method

.method public compute(Ljava/lang/String;)[B
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 103
    const/4 v4, 0x0

    .line 104
    .local v4, "src":Ljava/io/FileInputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 105
    .local v0, "block":[B
    const/4 v3, 0x0

    .line 110
    .local v3, "md5":[B
    :try_start_0
    invoke-direct {p0}, Lcom/parrot/arsdk/arsal/ARSALMd5;->initialize()Z

    .line 111
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    .end local v4    # "src":Ljava/io/FileInputStream;
    .local v5, "src":Ljava/io/FileInputStream;
    :goto_0
    const/4 v6, 0x0

    :try_start_1
    array-length v7, v0

    invoke-virtual {v5, v0, v6, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    .local v1, "count":I
    if-lez v1, :cond_0

    .line 115
    iget-object v6, p0, Lcom/parrot/arsdk/arsal/ARSALMd5;->digest:Ljava/security/MessageDigest;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v1}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 123
    .end local v1    # "count":I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 125
    .end local v5    # "src":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "src":Ljava/io/FileInputStream;
    :goto_1
    const-string v6, "DBG"

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    return-object v3

    .line 118
    .end local v4    # "src":Ljava/io/FileInputStream;
    .restart local v1    # "count":I
    .restart local v5    # "src":Ljava/io/FileInputStream;
    :cond_0
    :try_start_2
    iget-object v6, p0, Lcom/parrot/arsdk/arsal/ARSALMd5;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 119
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v5

    .line 130
    .end local v5    # "src":Ljava/io/FileInputStream;
    .restart local v4    # "src":Ljava/io/FileInputStream;
    goto :goto_2

    .line 127
    .end local v1    # "count":I
    :catch_1
    move-exception v2

    .line 129
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    const-string v6, "DBG"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 127
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "src":Ljava/io/FileInputStream;
    .restart local v5    # "src":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    move-object v4, v5

    .end local v5    # "src":Ljava/io/FileInputStream;
    .restart local v4    # "src":Ljava/io/FileInputStream;
    goto :goto_3

    .line 123
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method public compute([B)[B
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "md5":[B
    invoke-direct {p0}, Lcom/parrot/arsdk/arsal/ARSALMd5;->initialize()Z

    .line 139
    iget-object v1, p0, Lcom/parrot/arsdk/arsal/ARSALMd5;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 140
    iget-object v1, p0, Lcom/parrot/arsdk/arsal/ARSALMd5;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 142
    return-object v0
.end method

.method public getTextDigest([BII)Ljava/lang/String;
    .locals 7
    .param p1, "hash"    # [B
    .param p2, "index"    # I
    .param p3, "len"    # I

    .prologue
    .line 73
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    .local v1, "txt":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 77
    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int v6, p2, v0

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "val":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v2    # "val":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
