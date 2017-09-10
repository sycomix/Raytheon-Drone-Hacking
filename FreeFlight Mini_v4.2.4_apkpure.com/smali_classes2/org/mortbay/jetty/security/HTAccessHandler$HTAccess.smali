.class Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;
.super Ljava/lang/Object;
.source "HTAccessHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/security/HTAccessHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HTAccess"
.end annotation


# static fields
.field static final ALL:I = 0x1

.field static final ANY:I = 0x0

.field static final GROUP:Ljava/lang/String; = "group"

.field static final USER:Ljava/lang/String; = "user"

.field static final VALID_USER:Ljava/lang/String; = "valid-user"


# instance fields
.field _allowList:Ljava/util/ArrayList;

.field _denyList:Ljava/util/ArrayList;

.field _forbidden:Z

.field _groupFile:Ljava/lang/String;

.field _groupModified:J

.field _groupResource:Lorg/mortbay/resource/Resource;

.field _groups:Ljava/util/HashMap;

.field _lastModified:J

.field _methods:Ljava/util/HashMap;

.field _name:Ljava/lang/String;

.field _order:I

.field _requireEntities:Ljava/util/HashSet;

.field _requireName:Ljava/lang/String;

.field _satisfy:I

.field _type:Ljava/lang/String;

.field _userFile:Ljava/lang/String;

.field _userModified:J

.field _userResource:Lorg/mortbay/resource/Resource;

.field _users:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lorg/mortbay/resource/Resource;)V
    .locals 8
    .param p1, "resource"    # Lorg/mortbay/resource/Resource;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_users:Ljava/util/HashMap;

    .line 323
    iput-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groups:Ljava/util/HashMap;

    .line 326
    iput v4, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_satisfy:I

    .line 329
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_methods:Ljava/util/HashMap;

    .line 330
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireEntities:Ljava/util/HashSet;

    .line 333
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_allowList:Ljava/util/ArrayList;

    .line 334
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_denyList:Ljava/util/ArrayList;

    .line 336
    iput-boolean v4, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_forbidden:Z

    .line 341
    const/4 v1, 0x0

    .line 344
    .local v1, "htin":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 345
    .end local v1    # "htin":Ljava/io/BufferedReader;
    .local v2, "htin":Ljava/io/BufferedReader;
    :try_start_1
    invoke-direct {p0, v2}, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->parse(Ljava/io/BufferedReader;)V

    .line 346
    invoke-virtual {p1}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_lastModified:J

    .line 348
    iget-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userFile:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 350
    iget-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userFile:Ljava/lang/String;

    invoke-static {v3}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v3

    iput-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userResource:Lorg/mortbay/resource/Resource;

    .line 351
    iget-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v3}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 353
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_forbidden:Z

    .line 354
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Could not find ht user file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 360
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupFile:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 362
    iget-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupFile:Ljava/lang/String;

    invoke-static {v3}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v3

    iput-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupResource:Lorg/mortbay/resource/Resource;

    .line 363
    iget-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v3}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 365
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_forbidden:Z

    .line 366
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Could not find ht group file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_1
    move-object v1, v2

    .line 377
    .end local v2    # "htin":Ljava/io/BufferedReader;
    .restart local v1    # "htin":Ljava/io/BufferedReader;
    :goto_2
    return-void

    .line 356
    .end local v1    # "htin":Ljava/io/BufferedReader;
    .restart local v2    # "htin":Ljava/io/BufferedReader;
    :cond_2
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v3

    invoke-interface {v3}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 357
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "user file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 374
    .end local v2    # "htin":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "htin":Ljava/io/BufferedReader;
    :goto_3
    iput-boolean v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_forbidden:Z

    .line 375
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v3

    const-string v4, "LogSupport.EXCEPTION"

    invoke-interface {v3, v4, v0}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 368
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "htin":Ljava/io/BufferedReader;
    .restart local v2    # "htin":Ljava/io/BufferedReader;
    :cond_3
    :try_start_2
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v3

    invoke-interface {v3}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 369
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "group file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 372
    .end local v2    # "htin":Ljava/io/BufferedReader;
    .restart local v1    # "htin":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method private getUserCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 569
    iget-object v9, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userResource:Lorg/mortbay/resource/Resource;

    if-nez v9, :cond_0

    .line 614
    :goto_0
    return-object v8

    .line 572
    :cond_0
    iget-object v9, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_users:Ljava/util/HashMap;

    if-eqz v9, :cond_1

    iget-wide v10, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userModified:J

    iget-object v9, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v9}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-eqz v9, :cond_4

    .line 574
    :cond_1
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v9

    invoke-interface {v9}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 575
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "LOAD "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    iget-object v11, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v8, v8}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 576
    :cond_2
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_users:Ljava/util/HashMap;

    .line 577
    const/4 v6, 0x0

    .line 580
    .local v6, "ufin":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    iget-object v9, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v9}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    .end local v6    # "ufin":Ljava/io/BufferedReader;
    .local v7, "ufin":Ljava/io/BufferedReader;
    :try_start_1
    iget-object v8, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v8}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userModified:J

    .line 583
    :cond_3
    :goto_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 585
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 586
    const-string v8, "#"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 588
    const/16 v8, 0x3a

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 589
    .local v4, "spos":I
    if-ltz v4, :cond_3

    .line 591
    const/4 v8, 0x0

    invoke-virtual {v2, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 592
    .local v5, "u":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 593
    .local v3, "p":Ljava/lang/String;
    iget-object v8, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_users:Ljava/util/HashMap;

    invoke-virtual {v8, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 596
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "p":Ljava/lang/String;
    .end local v4    # "spos":I
    .end local v5    # "u":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v6, v7

    .line 598
    .end local v7    # "ufin":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v6    # "ufin":Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v8

    const-string v9, "LogSupport.EXCEPTION"

    invoke-interface {v8, v9, v0}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 604
    if-eqz v6, :cond_4

    .line 605
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 614
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "ufin":Ljava/io/BufferedReader;
    :cond_4
    :goto_3
    iget-object v8, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_users:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto/16 :goto_0

    .line 602
    .restart local v6    # "ufin":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v8

    .line 604
    :goto_4
    if-eqz v6, :cond_5

    .line 605
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 602
    :cond_5
    :goto_5
    throw v8

    .line 607
    :catch_1
    move-exception v1

    .line 609
    .local v1, "e2":Ljava/io/IOException;
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v9

    const-string v10, "LogSupport.EXCEPTION"

    invoke-interface {v9, v10, v1}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 607
    .end local v1    # "e2":Ljava/io/IOException;
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 609
    .restart local v1    # "e2":Ljava/io/IOException;
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v8

    const-string v9, "LogSupport.EXCEPTION"

    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "ufin":Ljava/io/BufferedReader;
    :goto_6
    invoke-interface {v8, v9, v1}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 604
    .end local v1    # "e2":Ljava/io/IOException;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v7    # "ufin":Ljava/io/BufferedReader;
    :cond_6
    if-eqz v7, :cond_4

    .line 605
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 607
    :catch_3
    move-exception v1

    .line 609
    .restart local v1    # "e2":Ljava/io/IOException;
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v8

    const-string v9, "LogSupport.EXCEPTION"

    goto :goto_6

    .line 602
    .end local v1    # "e2":Ljava/io/IOException;
    .end local v2    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "ufin":Ljava/io/BufferedReader;
    .restart local v6    # "ufin":Ljava/io/BufferedReader;
    goto :goto_4

    .line 596
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method private getUserGroups(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 620
    iget-object v10, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupResource:Lorg/mortbay/resource/Resource;

    if-nez v10, :cond_0

    .line 679
    :goto_0
    return-object v9

    .line 623
    :cond_0
    iget-object v10, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groups:Ljava/util/HashMap;

    if-eqz v10, :cond_1

    iget-wide v10, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupModified:J

    iget-object v12, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v12}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_5

    .line 625
    :cond_1
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v10

    invoke-interface {v10}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 626
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "LOAD "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v9, v9}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 628
    :cond_2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groups:Ljava/util/HashMap;

    .line 629
    const/4 v7, 0x0

    .line 632
    .local v7, "ufin":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    iget-object v10, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v10}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    .end local v7    # "ufin":Ljava/io/BufferedReader;
    .local v8, "ufin":Ljava/io/BufferedReader;
    :try_start_1
    iget-object v9, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v9}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v10

    iput-wide v10, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupModified:J

    .line 635
    :cond_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 637
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 638
    const-string v9, "#"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_3

    .line 641
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v9, ": \t"

    invoke-direct {v5, v4, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    .local v5, "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 645
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 646
    .local v2, "g":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 648
    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 650
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 651
    .local v6, "u":Ljava/lang/String;
    iget-object v9, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groups:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 652
    .local v3, "gl":Ljava/util/ArrayList;
    if-nez v3, :cond_4

    .line 654
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "gl":Ljava/util/ArrayList;
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 655
    .restart local v3    # "gl":Ljava/util/ArrayList;
    iget-object v9, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groups:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    :cond_4
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 661
    .end local v2    # "g":Ljava/lang/String;
    .end local v3    # "gl":Ljava/util/ArrayList;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "tok":Ljava/util/StringTokenizer;
    .end local v6    # "u":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v7, v8

    .line 663
    .end local v8    # "ufin":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v7    # "ufin":Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v9

    const-string v10, "LogSupport.EXCEPTION"

    invoke-interface {v9, v10, v0}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 669
    if-eqz v7, :cond_5

    .line 670
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 679
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "ufin":Ljava/io/BufferedReader;
    :cond_5
    :goto_3
    iget-object v9, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groups:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 667
    .restart local v7    # "ufin":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v9

    .line 669
    :goto_4
    if-eqz v7, :cond_6

    .line 670
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 667
    :cond_6
    :goto_5
    throw v9

    .line 672
    :catch_1
    move-exception v1

    .line 674
    .local v1, "e2":Ljava/io/IOException;
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v10

    const-string v11, "LogSupport.EXCEPTION"

    invoke-interface {v10, v11, v1}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 672
    .end local v1    # "e2":Ljava/io/IOException;
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 674
    .restart local v1    # "e2":Ljava/io/IOException;
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v9

    const-string v10, "LogSupport.EXCEPTION"

    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "ufin":Ljava/io/BufferedReader;
    :goto_6
    invoke-interface {v9, v10, v1}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 669
    .end local v1    # "e2":Ljava/io/IOException;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v8    # "ufin":Ljava/io/BufferedReader;
    :cond_7
    if-eqz v8, :cond_5

    .line 670
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 672
    :catch_3
    move-exception v1

    .line 674
    .restart local v1    # "e2":Ljava/io/IOException;
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v9

    const-string v10, "LogSupport.EXCEPTION"

    goto :goto_6

    .line 667
    .end local v1    # "e2":Ljava/io/IOException;
    .end local v4    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8    # "ufin":Ljava/io/BufferedReader;
    .restart local v7    # "ufin":Ljava/io/BufferedReader;
    goto :goto_4

    .line 661
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method private parse(Ljava/io/BufferedReader;)V
    .locals 11
    .param p1, "htin"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 722
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_1c

    .line 724
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 725
    const-string v7, "#"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 727
    const-string v7, "AuthUserFile"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 729
    const/16 v7, 0xd

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userFile:Ljava/lang/String;

    goto :goto_0

    .line 731
    :cond_1
    const-string v7, "AuthGroupFile"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 733
    const/16 v7, 0xe

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupFile:Ljava/lang/String;

    goto :goto_0

    .line 735
    :cond_2
    const-string v7, "AuthName"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 737
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_name:Ljava/lang/String;

    goto :goto_0

    .line 739
    :cond_3
    const-string v7, "AuthType"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 741
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_type:Ljava/lang/String;

    goto :goto_0

    .line 744
    :cond_4
    const-string v7, "<Limit"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 746
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 747
    .local v2, "limit":I
    const/16 v7, 0x3e

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 750
    .local v0, "endp":I
    if-gez v0, :cond_5

    .line 751
    move v0, v2

    .line 752
    :cond_5
    new-instance v6, Ljava/util/StringTokenizer;

    const/4 v7, 0x6

    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 753
    .local v6, "tkns":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 755
    iget-object v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_methods:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 758
    :cond_6
    :goto_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 760
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 761
    const-string v7, "#"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 763
    const-string v7, "satisfy"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 765
    const/4 v4, 0x7

    .line 766
    .local v4, "pos1":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 767
    :goto_3
    if-ge v4, v2, :cond_7

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-gt v7, v8, :cond_7

    .line 768
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 769
    :cond_7
    move v5, v4

    .line 770
    .local v5, "pos2":I
    :goto_4
    if-ge v5, v2, :cond_8

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-le v7, v8, :cond_8

    .line 771
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 772
    :cond_8
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 773
    .local v1, "l_string":Ljava/lang/String;
    const-string v7, "all"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 774
    const/4 v7, 0x1

    iput v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_satisfy:I

    goto :goto_2

    .line 775
    :cond_9
    const-string v7, "any"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 776
    const/4 v7, 0x0

    iput v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_satisfy:I

    goto :goto_2

    .line 778
    .end local v1    # "l_string":Ljava/lang/String;
    .end local v4    # "pos1":I
    .end local v5    # "pos2":I
    :cond_a
    const-string v7, "require"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 780
    const/4 v4, 0x7

    .line 781
    .restart local v4    # "pos1":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 782
    :goto_5
    if-ge v4, v2, :cond_b

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-gt v7, v8, :cond_b

    .line 783
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 784
    :cond_b
    move v5, v4

    .line 785
    .restart local v5    # "pos2":I
    :goto_6
    if-ge v5, v2, :cond_c

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-le v7, v8, :cond_c

    .line 786
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 787
    :cond_c
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireName:Ljava/lang/String;

    .line 788
    const-string v7, "user"

    iget-object v8, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 789
    const-string v7, "user"

    iput-object v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireName:Ljava/lang/String;

    .line 795
    :cond_d
    :goto_7
    add-int/lit8 v4, v5, 0x1

    .line 796
    if-ge v4, v2, :cond_6

    .line 798
    :goto_8
    if-ge v4, v2, :cond_10

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-gt v7, v8, :cond_10

    .line 799
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 790
    :cond_e
    const-string v7, "group"

    iget-object v8, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 791
    const-string v7, "group"

    iput-object v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireName:Ljava/lang/String;

    goto :goto_7

    .line 792
    :cond_f
    const-string v7, "valid-user"

    iget-object v8, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 793
    const-string v7, "valid-user"

    iput-object v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireName:Ljava/lang/String;

    goto :goto_7

    .line 801
    :cond_10
    new-instance v6, Ljava/util/StringTokenizer;

    .end local v6    # "tkns":Ljava/util/StringTokenizer;
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 802
    .restart local v6    # "tkns":Ljava/util/StringTokenizer;
    :goto_9
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 804
    iget-object v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireEntities:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 809
    .end local v4    # "pos1":I
    .end local v5    # "pos2":I
    :cond_11
    const-string v7, "order"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 811
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v7

    invoke-interface {v7}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 812
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "orderline="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "order="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget v9, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_order:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v10}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 813
    :cond_12
    const-string v7, "allow,deny"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_13

    .line 815
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v7

    const-string v8, "==>allow+deny"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v10}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 816
    const/4 v7, 0x1

    iput v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_order:I

    goto/16 :goto_2

    .line 818
    :cond_13
    const-string v7, "deny,allow"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_14

    .line 820
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v7

    const-string v8, "==>deny,allow"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v10}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 821
    const/4 v7, -0x1

    iput v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_order:I

    goto/16 :goto_2

    .line 823
    :cond_14
    const-string v7, "mutual-failure"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_6

    .line 825
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v7

    const-string v8, "==>mutual"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v10}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 826
    const/4 v7, 0x0

    iput v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_order:I

    goto/16 :goto_2

    .line 832
    :cond_15
    const-string v7, "allow from"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 834
    const/16 v4, 0xa

    .line 835
    .restart local v4    # "pos1":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 836
    :goto_a
    if-ge v4, v2, :cond_16

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-gt v7, v8, :cond_16

    .line 837
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 838
    :cond_16
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v7

    invoke-interface {v7}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 839
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "allow process:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v10}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 840
    :cond_17
    new-instance v6, Ljava/util/StringTokenizer;

    .end local v6    # "tkns":Ljava/util/StringTokenizer;
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 841
    .restart local v6    # "tkns":Ljava/util/StringTokenizer;
    :goto_b
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 843
    iget-object v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_allowList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 846
    .end local v4    # "pos1":I
    :cond_18
    const-string v7, "deny from"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 848
    const/16 v4, 0x9

    .line 849
    .restart local v4    # "pos1":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 850
    :goto_c
    if-ge v4, v2, :cond_19

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-gt v7, v8, :cond_19

    .line 851
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 852
    :cond_19
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v7

    invoke-interface {v7}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 853
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "deny process:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v10}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 855
    :cond_1a
    new-instance v6, Ljava/util/StringTokenizer;

    .end local v6    # "tkns":Ljava/util/StringTokenizer;
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 856
    .restart local v6    # "tkns":Ljava/util/StringTokenizer;
    :goto_d
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 858
    iget-object v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_denyList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 861
    .end local v4    # "pos1":I
    :cond_1b
    const-string v7, "</Limit>"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto/16 :goto_0

    .line 866
    .end local v0    # "endp":I
    .end local v2    # "limit":I
    .end local v6    # "tkns":Ljava/util/StringTokenizer;
    :cond_1c
    return-void
.end method


# virtual methods
.method public checkAccess(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x39

    const/16 v8, 0x30

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "alp":Z
    const/4 v2, 0x0

    .line 435
    .local v2, "dep":Z
    iget-object v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_allowList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_denyList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 505
    :cond_0
    :goto_0
    return v6

    .line 439
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_allowList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 441
    iget-object v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_allowList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 442
    .local v3, "elm":Ljava/lang/String;
    const-string v7, "all"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 444
    const/4 v0, 0x1

    .line 472
    .end local v3    # "elm":Ljava/lang/String;
    :cond_2
    :goto_2
    const/4 v4, 0x0

    :goto_3
    iget-object v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_denyList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 474
    iget-object v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_denyList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 475
    .restart local v3    # "elm":Ljava/lang/String;
    const-string v7, "all"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 477
    const/4 v2, 0x1

    .line 502
    .end local v3    # "elm":Ljava/lang/String;
    :cond_3
    :goto_4
    iget v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_order:I

    if-gez v7, :cond_c

    .line 503
    if-eqz v2, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    move v5, v6

    :cond_5
    move v6, v5

    goto :goto_0

    .line 449
    .restart local v3    # "elm":Ljava/lang/String;
    :cond_6
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 450
    .local v1, "c":C
    if-lt v1, v8, :cond_7

    if-gt v1, v9, :cond_7

    .line 453
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 455
    const/4 v0, 0x1

    .line 456
    goto :goto_2

    .line 462
    :cond_7
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 464
    const/4 v0, 0x1

    .line 465
    goto :goto_2

    .line 439
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 482
    .end local v1    # "c":C
    :cond_9
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 483
    .restart local v1    # "c":C
    if-lt v1, v8, :cond_a

    if-gt v1, v9, :cond_a

    .line 485
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 487
    const/4 v2, 0x1

    .line 488
    goto :goto_4

    .line 493
    :cond_a
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 495
    const/4 v2, 0x1

    .line 496
    goto :goto_4

    .line 472
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 505
    .end local v1    # "c":C
    .end local v3    # "elm":Ljava/lang/String;
    :cond_c
    if-eqz v0, :cond_d

    if-eqz v2, :cond_0

    :cond_d
    move v6, v5

    goto :goto_0
.end method

.method public checkAuth(Ljava/lang/String;Ljava/lang/String;Lorg/mortbay/jetty/security/UserRealm;Lorg/mortbay/jetty/Request;)Z
    .locals 11
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;
    .param p3, "realm"    # Lorg/mortbay/jetty/security/UserRealm;
    .param p4, "request"    # Lorg/mortbay/jetty/Request;

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 511
    iget-object v9, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireName:Ljava/lang/String;

    if-nez v9, :cond_1

    .line 545
    :cond_0
    :goto_0
    return v7

    .line 516
    :cond_1
    if-nez p3, :cond_5

    move-object v5, v1

    .line 517
    .local v5, "principal":Ljava/security/Principal;
    :goto_1
    if-nez v5, :cond_7

    .line 520
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->getUserCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_6

    const/4 v9, 0x2

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 522
    .local v6, "salt":Ljava/lang/String;
    :goto_2
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-static {p2, v6}, Lorg/mortbay/jetty/security/UnixCrypt;->crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 523
    .local v1, "cred":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_4

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, ""

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    :cond_4
    move v7, v8

    .line 524
    goto :goto_0

    .line 516
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "cred":Ljava/lang/String;
    .end local v5    # "principal":Ljava/security/Principal;
    .end local v6    # "salt":Ljava/lang/String;
    :cond_5
    invoke-interface {p3, p1, p2, p4}, Lorg/mortbay/jetty/security/UserRealm;->authenticate(Ljava/lang/String;Ljava/lang/Object;Lorg/mortbay/jetty/Request;)Ljava/security/Principal;

    move-result-object v5

    goto :goto_1

    .restart local v0    # "code":Ljava/lang/String;
    .restart local v5    # "principal":Ljava/security/Principal;
    :cond_6
    move-object v6, p1

    .line 521
    goto :goto_2

    .line 527
    .end local v0    # "code":Ljava/lang/String;
    :cond_7
    iget-object v9, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireName:Ljava/lang/String;

    const-string v10, "user"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 529
    iget-object v9, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireEntities:Ljava/util/HashSet;

    invoke-virtual {v9, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    :cond_8
    move v7, v8

    .line 545
    goto :goto_0

    .line 532
    :cond_9
    iget-object v9, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireName:Ljava/lang/String;

    const-string v10, "group"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 534
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->getUserGroups(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 535
    .local v4, "gps":Ljava/util/ArrayList;
    if-eqz v4, :cond_8

    .line 536
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "g":I
    move v3, v2

    .end local v2    # "g":I
    .local v3, "g":I
    :goto_3
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "g":I
    .restart local v2    # "g":I
    if-lez v3, :cond_8

    .line 537
    iget-object v9, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireEntities:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    move v3, v2

    .end local v2    # "g":I
    .restart local v3    # "g":I
    goto :goto_3

    .line 540
    .end local v3    # "g":I
    .end local v4    # "gps":Ljava/util/ArrayList;
    :cond_a
    iget-object v9, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireName:Ljava/lang/String;

    const-string v10, "valid-user"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_0
.end method

.method public getGroupResource()Lorg/mortbay/resource/Resource;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupResource:Lorg/mortbay/resource/Resource;

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 394
    iget-wide v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_lastModified:J

    return-wide v0
.end method

.method public getMethods()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_methods:Ljava/util/HashMap;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSatisfy()I
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_satisfy:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserResource()Lorg/mortbay/resource/Resource;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userResource:Lorg/mortbay/resource/Resource;

    return-object v0
.end method

.method public isAccessLimited()Z
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_allowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_denyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 552
    :cond_0
    const/4 v0, 0x1

    .line 554
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAuthLimited()Z
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 561
    const/4 v0, 0x1

    .line 563
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForbidden()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_forbidden:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 685
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 687
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "AuthUserFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 688
    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 689
    const-string v1, ", AuthGroupFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 690
    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 691
    const-string v1, ", AuthName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 692
    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 693
    const-string v1, ", AuthType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 694
    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 695
    const-string v1, ", Methods="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 696
    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_methods:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 697
    const-string v1, ", satisfy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 698
    iget v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_satisfy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 699
    iget v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_order:I

    if-gez v1, :cond_0

    .line 700
    const-string v1, ", order=deny,allow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 706
    :goto_0
    const-string v1, ", Allow from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 707
    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_allowList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 708
    const-string v1, ", deny from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 709
    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_denyList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 710
    const-string v1, ", requireName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 711
    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 712
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 713
    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireEntities:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 715
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 701
    :cond_0
    iget v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_order:I

    if-lez v1, :cond_1

    .line 702
    const-string v1, ", order=allow,deny"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 704
    :cond_1
    const-string v1, ", order=mutual-failure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
