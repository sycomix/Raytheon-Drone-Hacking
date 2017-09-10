.class public Lcom/parrot/freeflight/core/academy/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fileToJsonObject(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 88
    invoke-static {p0}, Lcom/parrot/freeflight/core/academy/FileUtils;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 91
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-object v2

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 96
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static fileToRunDetails(Ljava/io/File;)Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 114
    invoke-static {p0}, Lcom/parrot/freeflight/core/academy/FileUtils;->fileToJsonObject(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v1

    .line 115
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 117
    :try_start_0
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    invoke-direct {v2, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-object v2

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 122
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static fileToRunSummary(Ljava/io/File;)Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 101
    invoke-static {p0}, Lcom/parrot/freeflight/core/academy/FileUtils;->fileToJsonObject(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v1

    .line 102
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 104
    :try_start_0
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-direct {v2, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-object v2

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 105
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public static fileToString(Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .param p0, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v3, "data":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 62
    .local v0, "br":Ljava/io/BufferedReader;
    const/16 v6, 0x400

    :try_start_0
    new-array v2, v6, [C

    .line 63
    .local v2, "buffer":[C
    const/4 v5, 0x0

    .line 64
    .local v5, "readLen":I
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 66
    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 68
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 69
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "buffer":[C
    .end local v5    # "readLen":I
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    if-eqz v0, :cond_0

    .line 73
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 79
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 83
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "data":Ljava/lang/StringBuilder;
    :goto_3
    return-object v6

    .line 71
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "buffer":[C
    .restart local v3    # "data":Ljava/lang/StringBuilder;
    .restart local v5    # "readLen":I
    :cond_1
    if-eqz v1, :cond_4

    .line 73
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    .line 76
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 74
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    .line 75
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 76
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 74
    .end local v2    # "buffer":[C
    .end local v5    # "readLen":I
    :catch_2
    move-exception v4

    .line 75
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 71
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v0, :cond_2

    .line 73
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 76
    :cond_2
    :goto_5
    throw v6

    .line 74
    :catch_3
    move-exception v4

    .line 75
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 81
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "data":Ljava/lang/StringBuilder;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    const-string v6, "FileUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file not exist : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v6, 0x0

    goto :goto_3

    .line 71
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "buffer":[C
    .restart local v3    # "data":Ljava/lang/StringBuilder;
    .restart local v5    # "readLen":I
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 68
    .end local v2    # "buffer":[C
    .end local v5    # "readLen":I
    :catch_4
    move-exception v4

    goto :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "buffer":[C
    .restart local v5    # "readLen":I
    :cond_4
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static jsonObjectToFile(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 11
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "filePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v8, 0x400

    .line 28
    const/4 v6, 0x0

    .line 31
    .local v6, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .end local v6    # "writer":Ljava/io/FileWriter;
    .local v7, "writer":Ljava/io/FileWriter;
    const/4 v9, 0x2

    :try_start_1
    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "data":Ljava/lang/String;
    const/16 v9, 0x400

    new-array v0, v9, [C

    .line 34
    .local v0, "buffer":[C
    const/4 v5, 0x0

    .line 35
    .local v5, "writeLen":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 36
    .local v2, "dataLen":I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 37
    add-int/lit16 v9, v5, 0x400

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-le v9, v10, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v4, v9, v5

    .line 38
    .local v4, "len":I
    :goto_1
    add-int v9, v5, v4

    const/4 v10, 0x0

    invoke-virtual {v1, v5, v9, v0, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 39
    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v4}, Ljava/io/FileWriter;->write([CII)V

    .line 40
    invoke-virtual {v7}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    add-int/lit16 v5, v5, 0x400

    .line 42
    goto :goto_0

    .end local v4    # "len":I
    :cond_0
    move v4, v8

    .line 37
    goto :goto_1

    .line 46
    :cond_1
    if-eqz v7, :cond_4

    .line 48
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v7

    .line 54
    .end local v0    # "buffer":[C
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "dataLen":I
    .end local v5    # "writeLen":I
    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    :cond_2
    :goto_2
    return-void

    .line 49
    .end local v6    # "writer":Ljava/io/FileWriter;
    .restart local v0    # "buffer":[C
    .restart local v1    # "data":Ljava/lang/String;
    .restart local v2    # "dataLen":I
    .restart local v5    # "writeLen":I
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v3

    .line 50
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 51
    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    goto :goto_2

    .line 43
    .end local v0    # "buffer":[C
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "dataLen":I
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "writeLen":I
    :catch_1
    move-exception v8

    :goto_3
    move-object v3, v8

    .line 44
    .local v3, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    if-eqz v6, :cond_2

    .line 48
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 49
    :catch_2
    move-exception v3

    .line 50
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 46
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v6, :cond_3

    .line 48
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 51
    :cond_3
    :goto_6
    throw v8

    .line 49
    :catch_3
    move-exception v3

    .line 50
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 43
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v8

    :goto_7
    move-object v3, v8

    goto :goto_4

    .line 46
    .end local v6    # "writer":Ljava/io/FileWriter;
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    goto :goto_5

    .line 43
    .end local v6    # "writer":Ljava/io/FileWriter;
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :catch_5
    move-exception v8

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    goto :goto_7

    .end local v6    # "writer":Ljava/io/FileWriter;
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :catch_6
    move-exception v8

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    goto :goto_3

    .end local v6    # "writer":Ljava/io/FileWriter;
    .restart local v0    # "buffer":[C
    .restart local v1    # "data":Ljava/lang/String;
    .restart local v2    # "dataLen":I
    .restart local v5    # "writeLen":I
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :cond_4
    move-object v6, v7

    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    goto :goto_2
.end method
