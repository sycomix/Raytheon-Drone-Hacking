.class public Lorg/mortbay/servlet/ProxyServlet$Transparent;
.super Lorg/mortbay/servlet/ProxyServlet;
.source "ProxyServlet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/servlet/ProxyServlet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transparent"
.end annotation


# instance fields
.field _prefix:Ljava/lang/String;

.field _proxyTo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Lorg/mortbay/servlet/ProxyServlet;-><init>()V

    .line 353
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "server"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 356
    invoke-direct {p0}, Lorg/mortbay/servlet/ProxyServlet;-><init>()V

    .line 357
    iput-object p1, p0, Lorg/mortbay/servlet/ProxyServlet$Transparent;->_prefix:Ljava/lang/String;

    .line 358
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/servlet/ProxyServlet$Transparent;->_proxyTo:Ljava/lang/String;

    .line 359
    return-void
.end method


# virtual methods
.method public init(Ljavax/servlet/ServletConfig;)V
    .locals 3
    .param p1, "config"    # Ljavax/servlet/ServletConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 363
    const-string v0, "ProxyTo"

    invoke-interface {p1, v0}, Ljavax/servlet/ServletConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    const-string v0, "ProxyTo"

    invoke-interface {p1, v0}, Ljavax/servlet/ServletConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/servlet/ProxyServlet$Transparent;->_proxyTo:Ljava/lang/String;

    .line 365
    :cond_0
    const-string v0, "Prefix"

    invoke-interface {p1, v0}, Ljavax/servlet/ServletConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 366
    const-string v0, "Prefix"

    invoke-interface {p1, v0}, Ljavax/servlet/ServletConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/servlet/ProxyServlet$Transparent;->_prefix:Ljava/lang/String;

    .line 367
    :cond_1
    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet$Transparent;->_proxyTo:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 368
    new-instance v0, Ljavax/servlet/UnavailableException;

    const-string v1, "No ProxyTo"

    invoke-direct {v0, v1}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_2
    invoke-super {p0, p1}, Lorg/mortbay/servlet/ProxyServlet;->init(Ljavax/servlet/ServletConfig;)V

    .line 371
    iget-object v1, p0, Lorg/mortbay/servlet/ProxyServlet$Transparent;->_context:Ljavax/servlet/ServletContext;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Transparent ProxyServlet @ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet$Transparent;->_prefix:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "-"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/servlet/ProxyServlet$Transparent;->_proxyTo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;)V

    .line 373
    return-void

    .line 371
    :cond_3
    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet$Transparent;->_prefix:Ljava/lang/String;

    goto :goto_0
.end method

.method protected proxyHttpURL(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/net/URL;
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "serverName"    # Ljava/lang/String;
    .param p3, "serverPort"    # I
    .param p4, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet$Transparent;->_prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet$Transparent;->_prefix:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    const/4 v0, 0x0

    .line 382
    :goto_0
    return-object v0

    .line 380
    :cond_0
    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet$Transparent;->_prefix:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 381
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/mortbay/servlet/ProxyServlet$Transparent;->_proxyTo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/servlet/ProxyServlet$Transparent;->_prefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_1
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/mortbay/servlet/ProxyServlet$Transparent;->_proxyTo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
