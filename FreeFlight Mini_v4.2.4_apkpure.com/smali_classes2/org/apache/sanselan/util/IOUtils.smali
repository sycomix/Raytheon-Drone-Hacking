.class public Lorg/apache/sanselan/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"

# interfaces
.implements Lorg/apache/sanselan/SanselanConstants;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static final copyFileNio(Ljava/io/File;Ljava/io/File;)Z
    .locals 10
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dst"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    const/4 v1, 0x0

    .local v1, "srcChannel":Ljava/nio/channels/FileChannel;
    const/4 v6, 0x0

    .line 218
    .local v6, "dstChannel":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 221
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 228
    const/high16 v7, 0x1000000

    .line 229
    .local v7, "safe_max":I
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    .line 230
    .local v8, "size":J
    const-wide/16 v2, 0x0

    .line 231
    .local v2, "position":J
    :goto_0
    cmp-long v4, v2, v8

    if-gez v4, :cond_0

    .line 233
    int-to-long v4, v7

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 240
    const/4 v1, 0x0

    .line 241
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    const/4 v6, 0x0

    .line 244
    const/4 v4, 0x1

    .line 250
    if-eqz v1, :cond_1

    .line 251
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 259
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 260
    :try_start_2
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 265
    :cond_2
    :goto_2
    return v4

    .line 252
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 261
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 263
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 248
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "position":J
    .end local v7    # "safe_max":I
    .end local v8    # "size":J
    :catchall_0
    move-exception v4

    .line 250
    if-eqz v1, :cond_3

    .line 251
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 259
    :cond_3
    :goto_3
    if-eqz v6, :cond_4

    .line 260
    :try_start_4
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 265
    :cond_4
    :goto_4
    throw v4

    .line 252
    :catch_2
    move-exception v0

    .line 254
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 261
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 263
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public static copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "src"    # Ljava/io/InputStream;
    .param p1, "dst"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/sanselan/util/IOUtils;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 167
    return-void
.end method

.method public static copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .locals 9
    .param p0, "src"    # Ljava/io/InputStream;
    .param p1, "dst"    # Ljava/io/OutputStream;
    .param p2, "close_streams"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 177
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 178
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 181
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    const/16 v7, 0x1000

    :try_start_2
    new-array v4, v7, [B

    .line 182
    .local v4, "buffer":[B
    :goto_0
    const/4 v7, 0x0

    array-length v8, v4

    invoke-virtual {v1, v4, v7, v8}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    .local v5, "count":I
    if-lez v5, :cond_2

    .line 183
    const/4 v7, 0x0

    invoke-virtual {p1, v4, v7, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 188
    .end local v4    # "buffer":[B
    .end local v5    # "count":I
    :catchall_0
    move-exception v7

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    :goto_1
    if-eqz p2, :cond_1

    .line 192
    if-eqz v0, :cond_0

    .line 193
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 200
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    .line 201
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 205
    :cond_1
    :goto_3
    throw v7

    .line 185
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v5    # "count":I
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 188
    if-eqz p2, :cond_4

    .line 192
    if-eqz v1, :cond_3

    .line 193
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 200
    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    .line 201
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 209
    :cond_4
    :goto_5
    return-void

    .line 194
    :catch_0
    move-exception v6

    .line 196
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v6}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 202
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 204
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-static {v6}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 194
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "buffer":[B
    .end local v5    # "count":I
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v6

    .line 196
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-static {v6}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 202
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 204
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-static {v6}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 188
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    goto :goto_1

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method public static getFileBytes(Ljava/io/File;)[B
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v1, 0x0

    .line 99
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v2}, Lorg/apache/sanselan/util/IOUtils;->getInputStreamBytes(Ljava/io/InputStream;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 106
    if-eqz v2, :cond_0

    .line 107
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 111
    :cond_0
    :goto_0
    return-object v3

    .line 108
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 104
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    .line 106
    :goto_1
    if-eqz v1, :cond_1

    .line 107
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 111
    :cond_1
    :goto_2
    throw v3

    .line 108
    :catch_1
    move-exception v0

    .line 110
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 104
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static getInputStreamBytes(Ljava/io/InputStream;)[B
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v4, 0x0

    .line 57
    .local v4, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x1000

    invoke-direct {v5, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .local v5, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 62
    .end local p0    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    const/16 v6, 0x1000

    :try_start_2
    new-array v0, v6, [B

    .line 63
    .local v0, "buffer":[B
    :goto_0
    const/4 v6, 0x0

    const/16 v7, 0x1000

    invoke-virtual {v3, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "count":I
    if-lez v1, :cond_1

    .line 65
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 73
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catchall_0
    move-exception v6

    move-object v4, v5

    .end local v5    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "os":Ljava/io/ByteArrayOutputStream;
    move-object p0, v3

    .line 75
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :goto_1
    if-eqz v4, :cond_0

    .line 76
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 80
    :cond_0
    :goto_2
    throw v6

    .line 68
    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v5    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 70
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v6

    .line 75
    if-eqz v5, :cond_2

    .line 76
    :try_start_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 80
    :cond_2
    :goto_3
    return-object v6

    .line 77
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v2}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 77
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    .line 79
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {v2}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 73
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    goto :goto_1

    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "os":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_1
.end method

.method public static putInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 4
    .param p0, "src"    # Ljava/io/InputStream;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 145
    .local v1, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 146
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 147
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .local v2, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p0, v2}, Lorg/apache/sanselan/util/IOUtils;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    if-eqz v2, :cond_1

    .line 155
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 161
    :cond_1
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    .line 154
    :goto_1
    if-eqz v1, :cond_2

    .line 155
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 159
    :cond_2
    :goto_2
    throw v3

    .line 156
    :catch_1
    move-exception v0

    .line 158
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static writeToFile([BLjava/io/File;)V
    .locals 4
    .param p0, "src"    # [B
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 121
    .local v1, "stream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    .local v2, "stream":Ljava/io/ByteArrayInputStream;
    :try_start_1
    invoke-static {v2, p1}, Lorg/apache/sanselan/util/IOUtils;->putInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    if-eqz v2, :cond_0

    .line 129
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :catchall_0
    move-exception v3

    .line 128
    :goto_1
    if-eqz v1, :cond_1

    .line 129
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 134
    :cond_1
    :goto_2
    throw v3

    .line 130
    :catch_1
    move-exception v0

    .line 132
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "stream":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "stream":Ljava/io/ByteArrayInputStream;
    goto :goto_1
.end method
