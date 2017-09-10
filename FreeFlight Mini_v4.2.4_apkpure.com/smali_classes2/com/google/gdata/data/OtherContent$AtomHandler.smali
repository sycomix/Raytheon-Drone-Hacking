.class public Lcom/google/gdata/data/OtherContent$AtomHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "OtherContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/OtherContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AtomHandler"
.end annotation


# instance fields
.field private final extProfile:Lcom/google/gdata/data/ExtensionProfile;

.field final synthetic this$0:Lcom/google/gdata/data/OtherContent;

.field private final type:I


# direct methods
.method constructor <init>(Lcom/google/gdata/data/OtherContent;Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p3, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x5

    .line 205
    iput-object p1, p0, Lcom/google/gdata/data/OtherContent$AtomHandler;->this$0:Lcom/google/gdata/data/OtherContent;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    .line 207
    iput-object p2, p0, Lcom/google/gdata/data/OtherContent$AtomHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    .line 208
    const-string v1, ""

    const-string v2, "type"

    invoke-interface {p3, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "typeAttr":Ljava/lang/String;
    const-string v1, "application/atom+xml;type=feed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    new-instance v1, Lcom/google/gdata/data/Feed;

    invoke-direct {v1}, Lcom/google/gdata/data/Feed;-><init>()V

    iput-object v1, p1, Lcom/google/gdata/data/OtherContent;->ext:Lcom/google/gdata/data/Extension;

    .line 212
    iput v3, p0, Lcom/google/gdata/data/OtherContent$AtomHandler;->type:I

    .line 225
    :goto_0
    return-void

    .line 213
    :cond_0
    const-string v1, "application/atom+xml;type=entry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    iput v3, p0, Lcom/google/gdata/data/OtherContent$AtomHandler;->type:I

    .line 215
    new-instance v1, Lcom/google/gdata/data/Entry;

    invoke-direct {v1}, Lcom/google/gdata/data/Entry;-><init>()V

    iput-object v1, p1, Lcom/google/gdata/data/OtherContent;->ext:Lcom/google/gdata/data/Extension;

    goto :goto_0

    .line 216
    :cond_1
    const-string v1, "+xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 217
    :cond_2
    iput v3, p0, Lcom/google/gdata/data/OtherContent$AtomHandler;->type:I

    .line 218
    new-instance v1, Lcom/google/gdata/util/XmlBlob;

    invoke-direct {v1}, Lcom/google/gdata/util/XmlBlob;-><init>()V

    iput-object v1, p1, Lcom/google/gdata/data/OtherContent;->xml:Lcom/google/gdata/util/XmlBlob;

    .line 219
    iget-object v1, p1, Lcom/google/gdata/data/OtherContent;->xml:Lcom/google/gdata/util/XmlBlob;

    invoke-virtual {p0, v1, v4, v4}, Lcom/google/gdata/data/OtherContent$AtomHandler;->initializeXmlBlob(Lcom/google/gdata/util/XmlBlob;ZZ)V

    goto :goto_0

    .line 220
    :cond_3
    const-string v1, "text/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 221
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/gdata/data/OtherContent$AtomHandler;->type:I

    goto :goto_0

    .line 223
    :cond_4
    const/4 v1, 0x6

    iput v1, p0, Lcom/google/gdata/data/OtherContent$AtomHandler;->type:I

    goto :goto_0
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 2
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
    .line 254
    iget-object v0, p0, Lcom/google/gdata/data/OtherContent$AtomHandler;->this$0:Lcom/google/gdata/data/OtherContent;

    iget-object v0, v0, Lcom/google/gdata/data/OtherContent;->ext:Lcom/google/gdata/data/Extension;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/google/gdata/data/OtherContent$AtomHandler;->this$0:Lcom/google/gdata/data/OtherContent;

    iget-object v0, v0, Lcom/google/gdata/data/OtherContent;->ext:Lcom/google/gdata/data/Extension;

    iget-object v1, p0, Lcom/google/gdata/data/OtherContent$AtomHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/gdata/data/Extension;->getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/util/XmlParser$ElementHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    goto :goto_0
.end method

.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 238
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    const-string v1, "type"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/google/gdata/data/OtherContent$AtomHandler;->this$0:Lcom/google/gdata/data/OtherContent;

    new-instance v2, Lcom/google/gdata/util/ContentType;

    invoke-direct {v2, p3}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/google/gdata/data/OtherContent;->mimeType:Lcom/google/gdata/util/ContentType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->invalidMimeType:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public processEndElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 267
    iget v1, p0, Lcom/google/gdata/data/OtherContent$AtomHandler;->type:I

    packed-switch v1, :pswitch_data_0

    .line 293
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Invalid type for other content."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 275
    :pswitch_0
    iget-object v1, p0, Lcom/google/gdata/data/OtherContent$AtomHandler;->this$0:Lcom/google/gdata/data/OtherContent;

    iget-object v2, p0, Lcom/google/gdata/data/OtherContent$AtomHandler;->value:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/gdata/data/OtherContent;->text:Ljava/lang/String;

    .line 276
    iget-object v1, p0, Lcom/google/gdata/data/OtherContent$AtomHandler;->this$0:Lcom/google/gdata/data/OtherContent;

    iget-object v2, p0, Lcom/google/gdata/data/OtherContent$AtomHandler;->xmlLang:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/gdata/data/OtherContent;->lang:Ljava/lang/String;

    .line 295
    :goto_0
    :pswitch_1
    return-void

    .line 280
    :pswitch_2
    iget-object v1, p0, Lcom/google/gdata/data/OtherContent$AtomHandler;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 282
    :try_start_0
    iget-object v1, p0, Lcom/google/gdata/data/OtherContent$AtomHandler;->this$0:Lcom/google/gdata/data/OtherContent;

    iget-object v2, p0, Lcom/google/gdata/data/OtherContent$AtomHandler;->value:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/gdata/util/common/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/google/gdata/data/OtherContent;->bytes:[B
    :try_end_0
    .catch Lcom/google/gdata/util/common/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/OtherContent$AtomHandler;->this$0:Lcom/google/gdata/data/OtherContent;

    iget-object v2, p0, Lcom/google/gdata/data/OtherContent$AtomHandler;->xmlLang:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/gdata/data/OtherContent;->lang:Ljava/lang/String;

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Lcom/google/gdata/util/common/util/Base64DecoderException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->invalidBase64:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v1

    .line 267
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
