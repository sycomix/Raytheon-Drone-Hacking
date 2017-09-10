.class Lorg/mortbay/xml/XmlParser$Handler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/xml/XmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field private _context:Lorg/mortbay/xml/XmlParser$Node;

.field _error:Lorg/xml/sax/SAXParseException;

.field private _noop:Lorg/mortbay/xml/XmlParser$NoopHandler;

.field _top:Lorg/mortbay/xml/XmlParser$Node;

.field private final this$0:Lorg/mortbay/xml/XmlParser;


# direct methods
.method constructor <init>(Lorg/mortbay/xml/XmlParser;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 276
    iput-object p1, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 270
    new-instance v0, Lorg/mortbay/xml/XmlParser$Node;

    invoke-direct {v0, v1, v1, v1}, Lorg/mortbay/xml/XmlParser$Node;-><init>(Lorg/mortbay/xml/XmlParser$Node;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->_top:Lorg/mortbay/xml/XmlParser$Node;

    .line 272
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->_top:Lorg/mortbay/xml/XmlParser$Node;

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->_context:Lorg/mortbay/xml/XmlParser$Node;

    .line 277
    new-instance v0, Lorg/mortbay/xml/XmlParser$NoopHandler;

    invoke-direct {v0, p1, p0}, Lorg/mortbay/xml/XmlParser$NoopHandler;-><init>(Lorg/mortbay/xml/XmlParser;Lorg/mortbay/xml/XmlParser$Handler;)V

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->_noop:Lorg/mortbay/xml/XmlParser$NoopHandler;

    .line 278
    return-void
.end method

.method private getLocationString(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;
    .locals 2
    .param p1, "ex"    # Lorg/xml/sax/SAXParseException;

    .prologue
    .line 389
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " line:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " col:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 354
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Handler;->_context:Lorg/mortbay/xml/XmlParser$Node;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->add(Ljava/lang/Object;)Z

    .line 355
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v1}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 356
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v1}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v1}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 355
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_1
    return-void
.end method

.method clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->_top:Lorg/mortbay/xml/XmlParser$Node;

    .line 284
    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->_error:Lorg/xml/sax/SAXParseException;

    .line 285
    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->_context:Lorg/mortbay/xml/XmlParser$Node;

    .line 286
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 336
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Handler;->_context:Lorg/mortbay/xml/XmlParser$Node;

    iget-object v1, v1, Lorg/mortbay/xml/XmlParser$Node;->_parent:Lorg/mortbay/xml/XmlParser$Node;

    iput-object v1, p0, Lorg/mortbay/xml/XmlParser$Handler;->_context:Lorg/mortbay/xml/XmlParser$Node;

    .line 337
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v1}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 338
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v1}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v1}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_1
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v1}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 341
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .param p1, "ex"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Handler;->_error:Lorg/xml/sax/SAXParseException;

    if-nez v0, :cond_0

    .line 372
    iput-object p1, p0, Lorg/mortbay/xml/XmlParser$Handler;->_error:Lorg/xml/sax/SAXParseException;

    .line 373
    :cond_0
    const-string v0, "EXCEPTION "

    invoke-static {v0, p1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 374
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ERROR@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/mortbay/xml/XmlParser$Handler;->getLocationString(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .param p1, "ex"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 380
    iput-object p1, p0, Lorg/mortbay/xml/XmlParser$Handler;->_error:Lorg/xml/sax/SAXParseException;

    .line 381
    const-string v0, "EXCEPTION "

    invoke-static {v0, p1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 382
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "FATAL@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/mortbay/xml/XmlParser$Handler;->getLocationString(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 383
    throw p1
.end method

.method public ignorableWhitespace([CII)V
    .locals 2
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 346
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v1}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 347
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v1}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v1}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    .line 346
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_1
    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 8
    .param p1, "pid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x2f

    .line 395
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 396
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "resolveEntity("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 398
    :cond_0
    if-eqz p2, :cond_1

    const-string v5, ".dtd"

    invoke-virtual {p2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 399
    iget-object v5, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v5, p2}, Lorg/mortbay/xml/XmlParser;->access$402(Lorg/mortbay/xml/XmlParser;Ljava/lang/String;)Ljava/lang/String;

    .line 401
    :cond_1
    const/4 v2, 0x0

    .line 402
    .local v2, "entity":Ljava/net/URL;
    if-eqz p1, :cond_2

    .line 403
    iget-object v5, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v5}, Lorg/mortbay/xml/XmlParser;->access$500(Lorg/mortbay/xml/XmlParser;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "entity":Ljava/net/URL;
    check-cast v2, Ljava/net/URL;

    .line 404
    .restart local v2    # "entity":Ljava/net/URL;
    :cond_2
    if-nez v2, :cond_3

    .line 405
    iget-object v5, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v5}, Lorg/mortbay/xml/XmlParser;->access$500(Lorg/mortbay/xml/XmlParser;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "entity":Ljava/net/URL;
    check-cast v2, Ljava/net/URL;

    .line 406
    .restart local v2    # "entity":Ljava/net/URL;
    :cond_3
    if-nez v2, :cond_6

    .line 408
    move-object v0, p2

    .line 409
    .local v0, "dtd":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-ltz v5, :cond_4

    .line 410
    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 412
    :cond_4
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 413
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Can\'t exact match entity in redirect map, trying "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 414
    :cond_5
    iget-object v5, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v5}, Lorg/mortbay/xml/XmlParser;->access$500(Lorg/mortbay/xml/XmlParser;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "entity":Ljava/net/URL;
    check-cast v2, Ljava/net/URL;

    .line 417
    .end local v0    # "dtd":Ljava/lang/String;
    .restart local v2    # "entity":Ljava/net/URL;
    :cond_6
    if-eqz v2, :cond_8

    .line 421
    :try_start_0
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    .line 422
    .local v3, "in":Ljava/io/InputStream;
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 423
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Redirected entity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " --> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 424
    :cond_7
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 425
    .local v4, "is":Lorg/xml/sax/InputSource;
    invoke-virtual {v4, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "is":Lorg/xml/sax/InputSource;
    :goto_0
    return-object v4

    .line 428
    :catch_0
    move-exception v1

    .line 430
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 433
    .end local v1    # "e":Ljava/io/IOException;
    :cond_8
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 291
    if-eqz p1, :cond_0

    const-string v8, ""

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    move-object v3, p3

    .line 292
    .local v3, "name":Ljava/lang/String;
    :goto_0
    new-instance v4, Lorg/mortbay/xml/XmlParser$Node;

    iget-object v8, p0, Lorg/mortbay/xml/XmlParser$Handler;->_context:Lorg/mortbay/xml/XmlParser$Node;

    invoke-direct {v4, v8, v3, p4}, Lorg/mortbay/xml/XmlParser$Node;-><init>(Lorg/mortbay/xml/XmlParser$Node;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 296
    .local v4, "node":Lorg/mortbay/xml/XmlParser$Node;
    iget-object v8, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v8}, Lorg/mortbay/xml/XmlParser;->access$100(Lorg/mortbay/xml/XmlParser;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 298
    invoke-virtual {v4}, Lorg/mortbay/xml/XmlParser$Node;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 299
    .local v6, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .line 300
    .local v2, "match":Z
    iget-object v8, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v8}, Lorg/mortbay/xml/XmlParser;->access$100(Lorg/mortbay/xml/XmlParser;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    if-nez v2, :cond_4

    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_5

    .line 302
    iget-object v8, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v8}, Lorg/mortbay/xml/XmlParser;->access$100(Lorg/mortbay/xml/XmlParser;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v0}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 304
    .local v7, "xpath":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-le v8, v9, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2f

    if-ne v8, v9, :cond_3

    :cond_1
    const/4 v2, 0x1

    :goto_2
    move v1, v0

    .line 305
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "match":Z
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "node":Lorg/mortbay/xml/XmlParser$Node;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "xpath":Ljava/lang/String;
    :cond_2
    move-object v3, p2

    .line 291
    goto :goto_0

    .line 304
    .restart local v0    # "i":I
    .restart local v2    # "match":Z
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "node":Lorg/mortbay/xml/XmlParser$Node;
    .restart local v6    # "path":Ljava/lang/String;
    .restart local v7    # "xpath":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .end local v0    # "i":I
    .end local v7    # "xpath":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_4
    move v0, v1

    .line 307
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_5
    if-eqz v2, :cond_8

    .line 309
    iget-object v8, p0, Lorg/mortbay/xml/XmlParser$Handler;->_context:Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v8, v4}, Lorg/mortbay/xml/XmlParser$Node;->add(Ljava/lang/Object;)Z

    .line 310
    iput-object v4, p0, Lorg/mortbay/xml/XmlParser$Handler;->_context:Lorg/mortbay/xml/XmlParser$Node;

    .line 323
    .end local v0    # "i":I
    .end local v2    # "match":Z
    .end local v6    # "path":Ljava/lang/String;
    :goto_3
    const/4 v5, 0x0

    .line 324
    .local v5, "observer":Lorg/xml/sax/ContentHandler;
    iget-object v8, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v8}, Lorg/mortbay/xml/XmlParser;->access$200(Lorg/mortbay/xml/XmlParser;)Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 325
    iget-object v8, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v8}, Lorg/mortbay/xml/XmlParser;->access$200(Lorg/mortbay/xml/XmlParser;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "observer":Lorg/xml/sax/ContentHandler;
    check-cast v5, Lorg/xml/sax/ContentHandler;

    .line 326
    .restart local v5    # "observer":Lorg/xml/sax/ContentHandler;
    :cond_6
    iget-object v8, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v8}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v8, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v8}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    move-result v8

    if-ge v0, v8, :cond_a

    .line 329
    iget-object v8, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v8}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 330
    iget-object v8, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v8}, Lorg/mortbay/xml/XmlParser;->access$300(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/xml/sax/ContentHandler;

    invoke-interface {v8, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 328
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 314
    .end local v5    # "observer":Lorg/xml/sax/ContentHandler;
    .restart local v2    # "match":Z
    .restart local v6    # "path":Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lorg/mortbay/xml/XmlParser$Handler;->this$0:Lorg/mortbay/xml/XmlParser;

    invoke-static {v8}, Lorg/mortbay/xml/XmlParser;->access$000(Lorg/mortbay/xml/XmlParser;)Ljavax/xml/parsers/SAXParser;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v8

    iget-object v9, p0, Lorg/mortbay/xml/XmlParser$Handler;->_noop:Lorg/mortbay/xml/XmlParser$NoopHandler;

    invoke-interface {v8, v9}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    goto :goto_3

    .line 319
    .end local v0    # "i":I
    .end local v2    # "match":Z
    .end local v6    # "path":Ljava/lang/String;
    :cond_9
    iget-object v8, p0, Lorg/mortbay/xml/XmlParser$Handler;->_context:Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v8, v4}, Lorg/mortbay/xml/XmlParser$Node;->add(Ljava/lang/Object;)Z

    .line 320
    iput-object v4, p0, Lorg/mortbay/xml/XmlParser$Handler;->_context:Lorg/mortbay/xml/XmlParser$Node;

    goto :goto_3

    .line 331
    .restart local v0    # "i":I
    .restart local v5    # "observer":Lorg/xml/sax/ContentHandler;
    :cond_a
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .param p1, "ex"    # Lorg/xml/sax/SAXParseException;

    .prologue
    .line 363
    const-string v0, "EXCEPTION "

    invoke-static {v0, p1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 364
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "WARNING@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/mortbay/xml/XmlParser$Handler;->getLocationString(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 365
    return-void
.end method
