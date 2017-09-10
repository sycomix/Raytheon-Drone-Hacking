.class public abstract Ljavax/servlet/http/HttpServlet;
.super Ljavax/servlet/GenericServlet;
.source "HttpServlet.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final HEADER_IFMODSINCE:Ljava/lang/String; = "If-Modified-Since"

.field private static final HEADER_LASTMOD:Ljava/lang/String; = "Last-Modified"

.field private static final LSTRING_FILE:Ljava/lang/String; = "javax.servlet.http.LocalStrings"

.field private static final METHOD_DELETE:Ljava/lang/String; = "DELETE"

.field private static final METHOD_GET:Ljava/lang/String; = "GET"

.field private static final METHOD_HEAD:Ljava/lang/String; = "HEAD"

.field private static final METHOD_OPTIONS:Ljava/lang/String; = "OPTIONS"

.field private static final METHOD_POST:Ljava/lang/String; = "POST"

.field private static final METHOD_PUT:Ljava/lang/String; = "PUT"

.field private static final METHOD_TRACE:Ljava/lang/String; = "TRACE"

.field static class$javax$servlet$http$HttpServlet:Ljava/lang/Class;

.field private static lStrings:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const-string v0, "javax.servlet.http.LocalStrings"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Ljavax/servlet/http/HttpServlet;->lStrings:Ljava/util/ResourceBundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljavax/servlet/GenericServlet;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 484
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

.method private getAllDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 6
    .param p1, "c"    # Ljava/lang/Class;

    .prologue
    const/4 v5, 0x0

    .line 484
    sget-object v3, Ljavax/servlet/http/HttpServlet;->class$javax$servlet$http$HttpServlet:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string v3, "javax.servlet.http.HttpServlet"

    invoke-static {v3}, Ljavax/servlet/http/HttpServlet;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Ljavax/servlet/http/HttpServlet;->class$javax$servlet$http$HttpServlet:Ljava/lang/Class;

    :goto_0
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 485
    const/4 v2, 0x0

    .line 502
    :cond_0
    :goto_1
    return-object v2

    .line 484
    :cond_1
    sget-object v3, Ljavax/servlet/http/HttpServlet;->class$javax$servlet$http$HttpServlet:Ljava/lang/Class;

    goto :goto_0

    .line 488
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v3}, Ljavax/servlet/http/HttpServlet;->getAllDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 489
    .local v1, "parentMethods":[Ljava/lang/reflect/Method;
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 491
    .local v2, "thisMethods":[Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 492
    array-length v3, v1

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v0, v3, [Ljava/lang/reflect/Method;

    .line 494
    .local v0, "allMethods":[Ljava/lang/reflect/Method;
    array-length v3, v1

    invoke-static {v1, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    array-length v3, v1

    array-length v4, v2

    invoke-static {v2, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 499
    move-object v2, v0

    goto :goto_1
.end method

.method private maybeSetLastModified(Ljavax/servlet/http/HttpServletResponse;J)V
    .locals 2
    .param p1, "resp"    # Ljavax/servlet/http/HttpServletResponse;
    .param p2, "lastModified"    # J

    .prologue
    .line 770
    const-string v0, "Last-Modified"

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 772
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 773
    const-string v0, "Last-Modified"

    invoke-interface {p1, v0, p2, p3}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    goto :goto_0
.end method


# virtual methods
.method protected doDelete(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 4
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "resp"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 469
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "protocol":Ljava/lang/String;
    sget-object v2, Ljavax/servlet/http/HttpServlet;->lStrings:Ljava/util/ResourceBundle;

    const-string v3, "http.method_delete_not_supported"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "msg":Ljava/lang/String;
    const-string v2, "1.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    const/16 v2, 0x195

    invoke-interface {p2, v2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    .line 476
    :goto_0
    return-void

    .line 474
    :cond_0
    const/16 v2, 0x190

    invoke-interface {p2, v2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 4
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "resp"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "protocol":Ljava/lang/String;
    sget-object v2, Ljavax/servlet/http/HttpServlet;->lStrings:Ljava/util/ResourceBundle;

    const-string v3, "http.method_get_not_supported"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "msg":Ljava/lang/String;
    const-string v2, "1.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    const/16 v2, 0x195

    invoke-interface {p2, v2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    const/16 v2, 0x190

    invoke-interface {p2, v2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected doHead(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "resp"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    new-instance v0, Ljavax/servlet/http/NoBodyResponse;

    invoke-direct {v0, p2}, Ljavax/servlet/http/NoBodyResponse;-><init>(Ljavax/servlet/http/HttpServletResponse;)V

    .line 281
    .local v0, "response":Ljavax/servlet/http/NoBodyResponse;
    invoke-virtual {p0, p1, v0}, Ljavax/servlet/http/HttpServlet;->doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 282
    invoke-virtual {v0}, Ljavax/servlet/http/NoBodyResponse;->setContentLength()V

    .line 283
    return-void
.end method

.method protected doOptions(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 13
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "resp"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 548
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-direct {p0, v11}, Ljavax/servlet/http/HttpServlet;->getAllDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v10

    .line 550
    .local v10, "methods":[Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .line 551
    .local v1, "ALLOW_GET":Z
    const/4 v2, 0x0

    .line 552
    .local v2, "ALLOW_HEAD":Z
    const/4 v4, 0x0

    .line 553
    .local v4, "ALLOW_POST":Z
    const/4 v5, 0x0

    .line 554
    .local v5, "ALLOW_PUT":Z
    const/4 v0, 0x0

    .line 555
    .local v0, "ALLOW_DELETE":Z
    const/4 v6, 0x1

    .line 556
    .local v6, "ALLOW_TRACE":Z
    const/4 v3, 0x1

    .line 558
    .local v3, "ALLOW_OPTIONS":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v11, v10

    if-ge v8, v11, :cond_4

    .line 559
    aget-object v9, v10, v8

    .line 561
    .local v9, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "doGet"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 562
    const/4 v1, 0x1

    .line 563
    const/4 v2, 0x1

    .line 565
    :cond_0
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "doPost"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 566
    const/4 v4, 0x1

    .line 567
    :cond_1
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "doPut"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 568
    const/4 v5, 0x1

    .line 569
    :cond_2
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "doDelete"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 570
    const/4 v0, 0x1

    .line 558
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 574
    .end local v9    # "m":Ljava/lang/reflect/Method;
    :cond_4
    const/4 v7, 0x0

    .line 575
    .local v7, "allow":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 576
    if-nez v7, :cond_5

    const-string v7, "GET"

    .line 577
    :cond_5
    if-eqz v2, :cond_6

    .line 578
    if-nez v7, :cond_c

    const-string v7, "HEAD"

    .line 580
    :cond_6
    :goto_1
    if-eqz v4, :cond_7

    .line 581
    if-nez v7, :cond_d

    const-string v7, "POST"

    .line 583
    :cond_7
    :goto_2
    if-eqz v5, :cond_8

    .line 584
    if-nez v7, :cond_e

    const-string v7, "PUT"

    .line 586
    :cond_8
    :goto_3
    if-eqz v0, :cond_9

    .line 587
    if-nez v7, :cond_f

    const-string v7, "DELETE"

    .line 589
    :cond_9
    :goto_4
    if-eqz v6, :cond_a

    .line 590
    if-nez v7, :cond_10

    const-string v7, "TRACE"

    .line 592
    :cond_a
    :goto_5
    if-eqz v3, :cond_b

    .line 593
    if-nez v7, :cond_11

    const-string v7, "OPTIONS"

    .line 596
    :cond_b
    :goto_6
    const-string v11, "Allow"

    invoke-interface {p2, v11, v7}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    return-void

    .line 579
    :cond_c
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, ", HEAD"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 582
    :cond_d
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, ", POST"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 585
    :cond_e
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, ", PUT"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 588
    :cond_f
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, ", DELETE"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 591
    :cond_10
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, ", TRACE"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 594
    :cond_11
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, ", OPTIONS"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_6
.end method

.method protected doPost(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 4
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "resp"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "protocol":Ljava/lang/String;
    sget-object v2, Ljavax/servlet/http/HttpServlet;->lStrings:Ljava/util/ResourceBundle;

    const-string v3, "http.method_post_not_supported"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "msg":Ljava/lang/String;
    const-string v2, "1.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    const/16 v2, 0x195

    invoke-interface {p2, v2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_0
    const/16 v2, 0x190

    invoke-interface {p2, v2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected doPut(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 4
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "resp"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "protocol":Ljava/lang/String;
    sget-object v2, Ljavax/servlet/http/HttpServlet;->lStrings:Ljava/util/ResourceBundle;

    const-string v3, "http.method_put_not_supported"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "msg":Ljava/lang/String;
    const-string v2, "1.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    const/16 v2, 0x195

    invoke-interface {p2, v2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    .line 421
    :goto_0
    return-void

    .line 419
    :cond_0
    const/16 v2, 0x190

    invoke-interface {p2, v2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected doTrace(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 8
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "resp"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 637
    const-string v0, "\r\n"

    .line 638
    .local v0, "CRLF":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "TRACE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 641
    .local v5, "responseString":Ljava/lang/String;
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getHeaderNames()Ljava/util/Enumeration;

    move-result-object v3

    .line 643
    .local v3, "reqHeaderEnum":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 644
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 645
    .local v1, "headerName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 647
    goto :goto_0

    .line 649
    .end local v1    # "headerName":Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 651
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 653
    .local v4, "responseLength":I
    const-string v6, "message/http"

    invoke-interface {p2, v6}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 654
    invoke-interface {p2, v4}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 655
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v2

    .line 656
    .local v2, "out":Ljavax/servlet/ServletOutputStream;
    invoke-virtual {v2, v5}, Ljavax/servlet/ServletOutputStream;->print(Ljava/lang/String;)V

    .line 657
    invoke-virtual {v2}, Ljavax/servlet/ServletOutputStream;->close()V

    .line 658
    return-void
.end method

.method protected getLastModified(Ljavax/servlet/http/HttpServletRequest;)J
    .locals 2
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 234
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 6
    .param p1, "req"    # Ljavax/servlet/ServletRequest;
    .param p2, "res"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 815
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljavax/servlet/http/HttpServletRequest;

    move-object v2, v0

    .line 816
    .local v2, "request":Ljavax/servlet/http/HttpServletRequest;
    move-object v0, p2

    check-cast v0, Ljavax/servlet/http/HttpServletResponse;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    .local v3, "response":Ljavax/servlet/http/HttpServletResponse;
    invoke-virtual {p0, v2, v3}, Ljavax/servlet/http/HttpServlet;->service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 821
    return-void

    .line 817
    .end local v2    # "request":Ljavax/servlet/http/HttpServletRequest;
    .end local v3    # "response":Ljavax/servlet/http/HttpServletResponse;
    :catch_0
    move-exception v1

    .line 818
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljavax/servlet/ServletException;

    const-string v5, "non-HTTP request or response"

    invoke-direct {v4, v5}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 12
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "resp"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x3e8

    .line 700
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v6

    .line 702
    .local v6, "method":Ljava/lang/String;
    const-string v7, "GET"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 703
    invoke-virtual {p0, p1}, Ljavax/servlet/http/HttpServlet;->getLastModified(Ljavax/servlet/http/HttpServletRequest;)J

    move-result-wide v4

    .line 704
    .local v4, "lastModified":J
    const-wide/16 v8, -0x1

    cmp-long v7, v4, v8

    if-nez v7, :cond_0

    .line 707
    invoke-virtual {p0, p1, p2}, Ljavax/servlet/http/HttpServlet;->doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 754
    .end local v4    # "lastModified":J
    :goto_0
    return-void

    .line 709
    .restart local v4    # "lastModified":J
    :cond_0
    const-string v7, "If-Modified-Since"

    invoke-interface {p1, v7}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v2

    .line 710
    .local v2, "ifModifiedSince":J
    div-long v8, v4, v10

    mul-long/2addr v8, v10

    cmp-long v7, v2, v8

    if-gez v7, :cond_1

    .line 714
    invoke-direct {p0, p2, v4, v5}, Ljavax/servlet/http/HttpServlet;->maybeSetLastModified(Ljavax/servlet/http/HttpServletResponse;J)V

    .line 715
    invoke-virtual {p0, p1, p2}, Ljavax/servlet/http/HttpServlet;->doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 717
    :cond_1
    const/16 v7, 0x130

    invoke-interface {p2, v7}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    goto :goto_0

    .line 721
    .end local v2    # "ifModifiedSince":J
    .end local v4    # "lastModified":J
    :cond_2
    const-string v7, "HEAD"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 722
    invoke-virtual {p0, p1}, Ljavax/servlet/http/HttpServlet;->getLastModified(Ljavax/servlet/http/HttpServletRequest;)J

    move-result-wide v4

    .line 723
    .restart local v4    # "lastModified":J
    invoke-direct {p0, p2, v4, v5}, Ljavax/servlet/http/HttpServlet;->maybeSetLastModified(Ljavax/servlet/http/HttpServletResponse;J)V

    .line 724
    invoke-virtual {p0, p1, p2}, Ljavax/servlet/http/HttpServlet;->doHead(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 726
    .end local v4    # "lastModified":J
    :cond_3
    const-string v7, "POST"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 727
    invoke-virtual {p0, p1, p2}, Ljavax/servlet/http/HttpServlet;->doPost(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 729
    :cond_4
    const-string v7, "PUT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 730
    invoke-virtual {p0, p1, p2}, Ljavax/servlet/http/HttpServlet;->doPut(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 732
    :cond_5
    const-string v7, "DELETE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 733
    invoke-virtual {p0, p1, p2}, Ljavax/servlet/http/HttpServlet;->doDelete(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 735
    :cond_6
    const-string v7, "OPTIONS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 736
    invoke-virtual {p0, p1, p2}, Ljavax/servlet/http/HttpServlet;->doOptions(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 738
    :cond_7
    const-string v7, "TRACE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 739
    invoke-virtual {p0, p1, p2}, Ljavax/servlet/http/HttpServlet;->doTrace(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 747
    :cond_8
    sget-object v7, Ljavax/servlet/http/HttpServlet;->lStrings:Ljava/util/ResourceBundle;

    const-string v8, "http.method_not_implemented"

    invoke-virtual {v7, v8}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 748
    .local v1, "errMsg":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/Object;

    .line 749
    .local v0, "errArgs":[Ljava/lang/Object;
    const/4 v7, 0x0

    aput-object v6, v0, v7

    .line 750
    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 752
    const/16 v7, 0x1f5

    invoke-interface {p2, v7, v1}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    goto/16 :goto_0
.end method
