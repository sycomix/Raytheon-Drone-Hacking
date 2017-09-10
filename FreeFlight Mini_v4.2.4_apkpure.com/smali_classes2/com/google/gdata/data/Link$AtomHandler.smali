.class public Lcom/google/gdata/data/Link$AtomHandler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AtomHandler"
.end annotation


# instance fields
.field private final linkRequired:Z

.field final synthetic this$0:Lcom/google/gdata/data/Link;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/Link;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/gdata/data/Link$AtomHandler;->this$0:Lcom/google/gdata/data/Link;

    .line 236
    const-class v0, Lcom/google/gdata/data/Link;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/data/Link$AtomHandler;->linkRequired:Z

    .line 238
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/data/Link;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/ExtensionProfile;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/Link;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p3, "extendedClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/Link;>;"
    iput-object p1, p0, Lcom/google/gdata/data/Link$AtomHandler;->this$0:Lcom/google/gdata/data/Link;

    .line 242
    invoke-direct {p0, p1, p2, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gdata/data/Link$AtomHandler;->linkRequired:Z

    .line 244
    return-void
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    const-string v1, "http://www.w3.org/2005/Atom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    const-string v1, "content"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    iget-object v1, p0, Lcom/google/gdata/data/Link$AtomHandler;->this$0:Lcom/google/gdata/data/Link;

    iget-object v1, v1, Lcom/google/gdata/data/Link;->content:Lcom/google/gdata/data/Content;

    if-eqz v1, :cond_0

    .line 285
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->duplicateContent:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v1

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/Link$AtomHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-static {v1, p3}, Lcom/google/gdata/data/Content;->getChildHandler(Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)Lcom/google/gdata/data/Content$ChildHandlerInfo;

    move-result-object v0

    .line 291
    .local v0, "chi":Lcom/google/gdata/data/Content$ChildHandlerInfo;
    iget-object v1, p0, Lcom/google/gdata/data/Link$AtomHandler;->this$0:Lcom/google/gdata/data/Link;

    iget-object v2, v0, Lcom/google/gdata/data/Content$ChildHandlerInfo;->content:Lcom/google/gdata/data/Content;

    iput-object v2, v1, Lcom/google/gdata/data/Link;->content:Lcom/google/gdata/data/Content;

    .line 292
    iget-object v1, v0, Lcom/google/gdata/data/Content$ChildHandlerInfo;->handler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    .line 296
    .end local v0    # "chi":Lcom/google/gdata/data/Content$ChildHandlerInfo;
    :goto_0
    return-object v1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v1

    goto :goto_0
.end method

.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 252
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 253
    const-string v1, "rel"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/google/gdata/data/Link$AtomHandler;->this$0:Lcom/google/gdata/data/Link;

    iput-object p3, v1, Lcom/google/gdata/data/Link;->rel:Ljava/lang/String;

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    const-string v1, "type"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 256
    iget-object v1, p0, Lcom/google/gdata/data/Link$AtomHandler;->this$0:Lcom/google/gdata/data/Link;

    iput-object p3, v1, Lcom/google/gdata/data/Link;->type:Ljava/lang/String;

    goto :goto_0

    .line 257
    :cond_2
    const-string v1, "href"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 258
    iget-object v1, p0, Lcom/google/gdata/data/Link$AtomHandler;->this$0:Lcom/google/gdata/data/Link;

    invoke-virtual {p0, p3}, Lcom/google/gdata/data/Link$AtomHandler;->getAbsoluteUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/gdata/data/Link;->href:Ljava/lang/String;

    goto :goto_0

    .line 259
    :cond_3
    const-string v1, "hreflang"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 260
    iget-object v1, p0, Lcom/google/gdata/data/Link$AtomHandler;->this$0:Lcom/google/gdata/data/Link;

    iput-object p3, v1, Lcom/google/gdata/data/Link;->hrefLang:Ljava/lang/String;

    goto :goto_0

    .line 261
    :cond_4
    const-string v1, "title"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 262
    iget-object v1, p0, Lcom/google/gdata/data/Link$AtomHandler;->this$0:Lcom/google/gdata/data/Link;

    iput-object p3, v1, Lcom/google/gdata/data/Link;->title:Ljava/lang/String;

    goto :goto_0

    .line 263
    :cond_5
    const-string v1, "length"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/google/gdata/data/Link$AtomHandler;->this$0:Lcom/google/gdata/data/Link;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/gdata/data/Link;->length:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->lengthNotInteger:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v1

    .line 271
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    const-string v1, "http://schemas.google.com/g/2005"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    const-string v1, "etag"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/google/gdata/data/Link$AtomHandler;->this$0:Lcom/google/gdata/data/Link;

    iput-object p3, v1, Lcom/google/gdata/data/Link;->etag:Ljava/lang/String;

    goto :goto_0
.end method

.method public processEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/google/gdata/data/Link$AtomHandler;->linkRequired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/data/Link$AtomHandler;->this$0:Lcom/google/gdata/data/Link;

    iget-object v0, v0, Lcom/google/gdata/data/Link;->href:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->missingHrefAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/Link$AtomHandler;->this$0:Lcom/google/gdata/data/Link;

    iget-object v1, p0, Lcom/google/gdata/data/Link$AtomHandler;->xmlLang:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/gdata/data/Link;->titleLang:Ljava/lang/String;

    .line 310
    return-void
.end method
