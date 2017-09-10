.class public Lcom/parrot/controller/utils/DisconnectionsLogger;
.super Ljava/lang/Object;
.source "DisconnectionsLogger.java"


# static fields
.field private static final FILE_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd:HH\'h\'mm"

.field private static final LOGS_DATE_FORMAT:Ljava/lang/String; = "yyyy/MM/dd,HH:mm:ss"

.field private static final LOGS_DIRECTORY_NAME:Ljava/lang/String; = "logs"

.field private static final LOG_FILENAME_FORMAT:Ljava/lang/String; = "deco_%s.txt"

.field public static isLoggingDisconnectionInfos:Z

.field private static logFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLogInfo(Ljava/lang/String;)V
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-object v8, Lcom/parrot/controller/utils/DisconnectionsLogger;->logFile:Ljava/io/File;

    if-eqz v8, :cond_0

    .line 30
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 31
    .local v0, "date":Ljava/util/Date;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .local v4, "stringbuilder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyy/MM/dd,HH:mm:ss"

    invoke-direct {v2, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 34
    .local v2, "formatter":Ljava/text/DateFormat;
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 35
    .local v5, "today":Ljava/lang/String;
    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 36
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    .line 37
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    .line 38
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 39
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    .line 40
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, "logs":Ljava/lang/String;
    const/4 v6, 0x0

    .line 47
    .local v6, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v7, Ljava/io/FileWriter;

    sget-object v8, Lcom/parrot/controller/utils/DisconnectionsLogger;->logFile:Ljava/io/File;

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .end local v6    # "writer":Ljava/io/FileWriter;
    .local v7, "writer":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v7, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    if-eqz v7, :cond_0

    .line 60
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 69
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "formatter":Ljava/text/DateFormat;
    .end local v3    # "logs":Ljava/lang/String;
    .end local v4    # "stringbuilder":Ljava/lang/StringBuilder;
    .end local v5    # "today":Ljava/lang/String;
    .end local v7    # "writer":Ljava/io/FileWriter;
    :cond_0
    :goto_0
    return-void

    .line 62
    .restart local v0    # "date":Ljava/util/Date;
    .restart local v2    # "formatter":Ljava/text/DateFormat;
    .restart local v3    # "logs":Ljava/lang/String;
    .restart local v4    # "stringbuilder":Ljava/lang/StringBuilder;
    .restart local v5    # "today":Ljava/lang/String;
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 50
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v1

    .line 52
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    if-eqz v6, :cond_0

    .line 60
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 62
    :catch_2
    move-exception v1

    .line 64
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 56
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v6, :cond_1

    .line 60
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 65
    :cond_1
    :goto_3
    throw v8

    .line 62
    :catch_3
    move-exception v1

    .line 64
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 56
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "writer":Ljava/io/FileWriter;
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    goto :goto_2

    .line 50
    .end local v6    # "writer":Ljava/io/FileWriter;
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :catch_4
    move-exception v1

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    goto :goto_1
.end method

.method public static checkDebugMode(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 75
    .local v0, "date":Ljava/util/Date;
    const-string v1, "logs"

    .line 76
    .local v1, "directoryName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0, v9}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v4, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    .local v4, "logsDirectory":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 79
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd:HH\'h\'mm"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 80
    .local v3, "formatter":Ljava/text/DateFormat;
    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "today":Ljava/lang/String;
    const-string v6, "deco_%s.txt"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "filename":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0, v9}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v6, Lcom/parrot/controller/utils/DisconnectionsLogger;->logFile:Ljava/io/File;

    .line 84
    sput-boolean v10, Lcom/parrot/controller/utils/DisconnectionsLogger;->isLoggingDisconnectionInfos:Z

    .line 90
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "formatter":Ljava/text/DateFormat;
    .end local v5    # "today":Ljava/lang/String;
    :goto_0
    return-void

    .line 88
    :cond_0
    sput-boolean v8, Lcom/parrot/controller/utils/DisconnectionsLogger;->isLoggingDisconnectionInfos:Z

    goto :goto_0
.end method
