.class Lcom/google/api/gbase/client/AttributeHistogram$1;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "AttributeHistogram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/gbase/client/AttributeHistogram;->getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/gbase/client/AttributeHistogram;


# direct methods
.method constructor <init>(Lcom/google/api/gbase/client/AttributeHistogram;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/google/api/gbase/client/AttributeHistogram$1;->this$0:Lcom/google/api/gbase/client/AttributeHistogram;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

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
    .line 260
    const-string v0, "http://base.google.com/ns-metadata/1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "value"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    new-instance v0, Lcom/google/api/gbase/client/AttributeHistogram$AddValueHandler;

    iget-object v1, p0, Lcom/google/api/gbase/client/AttributeHistogram$1;->this$0:Lcom/google/api/gbase/client/AttributeHistogram;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p3, v2}, Lcom/google/api/gbase/client/AttributeHistogram$AddValueHandler;-><init>(Lcom/google/api/gbase/client/AttributeHistogram;Lorg/xml/sax/Attributes;Lcom/google/api/gbase/client/AttributeHistogram$1;)V

    .line 264
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/util/XmlParser$ElementHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    goto :goto_0
.end method
