.class public Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "OpenSearchDescriptionDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/OpenSearchDescriptionDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Handler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$AdultContentHandler;,
        Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$SyndicationRightHandler;,
        Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$AttributionHandler;,
        Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$ContactHandler;,
        Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$DeveloperHandler;,
        Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$SampleSearchHandler;,
        Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$ImageHandler;,
        Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$TagsHandler;,
        Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$DescriptionHandler;,
        Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$LongNameHandler;,
        Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$ShortNameHandler;,
        Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$FormatHandler;,
        Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$UrlHandler;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/OpenSearchDescriptionDocument;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->this$0:Lcom/google/gdata/data/OpenSearchDescriptionDocument;

    .line 320
    const-class v0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 321
    return-void
.end method

.method private ensureNull(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 403
    if-eqz p1, :cond_0

    .line 404
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->duplicateValue:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 407
    :cond_0
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
    const/4 v2, 0x0

    .line 329
    invoke-static {}, Lcom/google/gdata/util/Namespaces;->getOpenSearchDescNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    .line 330
    .local v0, "openSearchDescNs":Lcom/google/gdata/util/common/xml/XmlNamespace;
    invoke-virtual {v0}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 332
    const-string v1, "Url"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->this$0:Lcom/google/gdata/data/OpenSearchDescriptionDocument;

    iget-object v1, v1, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->ensureNull(Ljava/lang/String;)V

    .line 335
    new-instance v1, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$UrlHandler;

    invoke-direct {v1, p0, v2}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$UrlHandler;-><init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;Lcom/google/gdata/data/OpenSearchDescriptionDocument$1;)V

    .line 399
    :goto_0
    return-object v1

    .line 337
    :cond_0
    const-string v1, "Format"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    iget-object v1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->this$0:Lcom/google/gdata/data/OpenSearchDescriptionDocument;

    iget-object v1, v1, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->format:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->ensureNull(Ljava/lang/String;)V

    .line 339
    new-instance v1, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$FormatHandler;

    invoke-direct {v1, p0, v2}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$FormatHandler;-><init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;Lcom/google/gdata/data/OpenSearchDescriptionDocument$1;)V

    goto :goto_0

    .line 341
    :cond_1
    const-string v1, "ShortName"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    iget-object v1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->this$0:Lcom/google/gdata/data/OpenSearchDescriptionDocument;

    iget-object v1, v1, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->shortName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->ensureNull(Ljava/lang/String;)V

    .line 344
    new-instance v1, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$ShortNameHandler;

    invoke-direct {v1, p0, v2}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$ShortNameHandler;-><init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;Lcom/google/gdata/data/OpenSearchDescriptionDocument$1;)V

    goto :goto_0

    .line 346
    :cond_2
    const-string v1, "LongName"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 348
    iget-object v1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->this$0:Lcom/google/gdata/data/OpenSearchDescriptionDocument;

    iget-object v1, v1, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->longName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->ensureNull(Ljava/lang/String;)V

    .line 349
    new-instance v1, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$LongNameHandler;

    invoke-direct {v1, p0, v2}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$LongNameHandler;-><init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;Lcom/google/gdata/data/OpenSearchDescriptionDocument$1;)V

    goto :goto_0

    .line 351
    :cond_3
    const-string v1, "Description"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 353
    iget-object v1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->this$0:Lcom/google/gdata/data/OpenSearchDescriptionDocument;

    iget-object v1, v1, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->description:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->ensureNull(Ljava/lang/String;)V

    .line 354
    new-instance v1, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$DescriptionHandler;

    invoke-direct {v1, p0, v2}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$DescriptionHandler;-><init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;Lcom/google/gdata/data/OpenSearchDescriptionDocument$1;)V

    goto :goto_0

    .line 356
    :cond_4
    const-string v1, "Tags"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 358
    iget-object v1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->this$0:Lcom/google/gdata/data/OpenSearchDescriptionDocument;

    iget-object v1, v1, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->tags:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->ensureNull(Ljava/lang/String;)V

    .line 359
    new-instance v1, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$TagsHandler;

    invoke-direct {v1, p0, v2}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$TagsHandler;-><init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;Lcom/google/gdata/data/OpenSearchDescriptionDocument$1;)V

    goto :goto_0

    .line 361
    :cond_5
    const-string v1, "Image"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 363
    iget-object v1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->this$0:Lcom/google/gdata/data/OpenSearchDescriptionDocument;

    iget-object v1, v1, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->image:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->ensureNull(Ljava/lang/String;)V

    .line 364
    new-instance v1, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$ImageHandler;

    invoke-direct {v1, p0, v2}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$ImageHandler;-><init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;Lcom/google/gdata/data/OpenSearchDescriptionDocument$1;)V

    goto :goto_0

    .line 366
    :cond_6
    const-string v1, "SampleSearch"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 368
    iget-object v1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->this$0:Lcom/google/gdata/data/OpenSearchDescriptionDocument;

    iget-object v1, v1, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->sampleSearch:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->ensureNull(Ljava/lang/String;)V

    .line 369
    new-instance v1, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$SampleSearchHandler;

    invoke-direct {v1, p0, v2}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$SampleSearchHandler;-><init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;Lcom/google/gdata/data/OpenSearchDescriptionDocument$1;)V

    goto/16 :goto_0

    .line 371
    :cond_7
    const-string v1, "Developer"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 373
    iget-object v1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->this$0:Lcom/google/gdata/data/OpenSearchDescriptionDocument;

    iget-object v1, v1, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->developer:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->ensureNull(Ljava/lang/String;)V

    .line 374
    new-instance v1, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$DeveloperHandler;

    invoke-direct {v1, p0, v2}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$DeveloperHandler;-><init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;Lcom/google/gdata/data/OpenSearchDescriptionDocument$1;)V

    goto/16 :goto_0

    .line 376
    :cond_8
    const-string v1, "Contact"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 378
    iget-object v1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->this$0:Lcom/google/gdata/data/OpenSearchDescriptionDocument;

    iget-object v1, v1, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->contact:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->ensureNull(Ljava/lang/String;)V

    .line 379
    new-instance v1, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$ContactHandler;

    invoke-direct {v1, p0, v2}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$ContactHandler;-><init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;Lcom/google/gdata/data/OpenSearchDescriptionDocument$1;)V

    goto/16 :goto_0

    .line 381
    :cond_9
    const-string v1, "Attribution"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 383
    iget-object v1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->this$0:Lcom/google/gdata/data/OpenSearchDescriptionDocument;

    iget-object v1, v1, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->attribution:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->ensureNull(Ljava/lang/String;)V

    .line 384
    new-instance v1, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$AttributionHandler;

    invoke-direct {v1, p0, v2}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$AttributionHandler;-><init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;Lcom/google/gdata/data/OpenSearchDescriptionDocument$1;)V

    goto/16 :goto_0

    .line 386
    :cond_a
    const-string v1, "SyndicationRight"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 388
    new-instance v1, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$SyndicationRightHandler;

    invoke-direct {v1, p0, v2}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$SyndicationRightHandler;-><init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;Lcom/google/gdata/data/OpenSearchDescriptionDocument$1;)V

    goto/16 :goto_0

    .line 390
    :cond_b
    const-string v1, "AdultContent"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 392
    new-instance v1, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$AdultContentHandler;

    invoke-direct {v1, p0, v2}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$AdultContentHandler;-><init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;Lcom/google/gdata/data/OpenSearchDescriptionDocument$1;)V

    goto/16 :goto_0

    .line 396
    :cond_c
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v1

    goto/16 :goto_0

    :cond_d
    move-object v1, v2

    .line 399
    goto/16 :goto_0
.end method
