.class public Lorg/apache/sanselan/common/byteSources/ByteSourceFile;
.super Lorg/apache/sanselan/common/byteSources/ByteSource;
.source "ByteSourceFile.java"


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 35
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/sanselan/common/byteSources/ByteSource;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;->file:Ljava/io/File;

    .line 37
    return-void
.end method


# virtual methods
.method public getAll()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 81
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 84
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v5, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;->file:Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    const/16 v5, 0x400

    :try_start_2
    new-array v1, v5, [B

    .line 88
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "read":I
    if-lez v4, :cond_1

    .line 90
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 96
    .end local v1    # "buffer":[B
    .end local v4    # "read":I
    :catchall_0
    move-exception v5

    .line 98
    :goto_1
    if-eqz v2, :cond_0

    .line 99
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 104
    :cond_0
    :goto_2
    throw v5

    .line 92
    .restart local v1    # "buffer":[B
    .restart local v4    # "read":I
    :cond_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    .line 98
    if-eqz v2, :cond_2

    .line 99
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 104
    :cond_2
    :goto_3
    return-object v5

    .line 101
    :catch_0
    move-exception v6

    goto :goto_3

    .end local v1    # "buffer":[B
    .end local v4    # "read":I
    :catch_1
    move-exception v6

    goto :goto_2

    .line 96
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public getBlock(II)[B
    .locals 8
    .param p1, "start"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    const/4 v7, 0x0

    .line 53
    .local v7, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;->file:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .local v1, "raf":Ljava/io/RandomAccessFile;
    int-to-long v2, p1

    :try_start_1
    const-string v5, "Could not read value from file"

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;->getRAFBytes(Ljava/io/RandomAccessFile;JILjava/lang/String;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 62
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 67
    :goto_0
    return-object v0

    .line 64
    :catch_0
    move-exception v6

    .line 66
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 60
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v0

    move-object v1, v7

    .line 62
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 67
    :goto_2
    throw v0

    .line 64
    :catch_1
    move-exception v6

    .line 66
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 60
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "File: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    const/4 v1, 0x0

    .line 42
    .local v1, "is":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 43
    .local v0, "bis":Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/io/FileInputStream;

    .end local v1    # "is":Ljava/io/FileInputStream;
    iget-object v2, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 44
    .restart local v1    # "is":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 45
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    return-object v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method
