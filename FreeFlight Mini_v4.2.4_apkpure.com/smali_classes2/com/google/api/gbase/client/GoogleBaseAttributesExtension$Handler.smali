.class Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "GoogleBaseAttributesExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field private final attribute:Lcom/google/api/gbase/client/GoogleBaseAttribute;

.field final synthetic this$0:Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;


# direct methods
.method constructor <init>(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "xmlAttributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 1871
    iput-object p1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;->this$0:Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    .line 1872
    invoke-static {p1, p2}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->access$000(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1873
    .local v0, "attributeName":Ljava/lang/String;
    invoke-static {p1, v0, p3}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->access$100(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;->attribute:Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 1874
    invoke-static {p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->access$200(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;->attribute:Lcom/google/api/gbase/client/GoogleBaseAttribute;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1875
    return-void
.end method

.method static synthetic access$300(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 1
    .param p0, "x0"    # Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;->attribute:Lcom/google/api/gbase/client/GoogleBaseAttribute;

    return-object v0
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 1888
    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;->attribute:Lcom/google/api/gbase/client/GoogleBaseAttribute;

    invoke-virtual {v1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getType()Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v0

    .line 1889
    .local v0, "type":Lcom/google/api/gbase/client/GoogleBaseAttributeType;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->GROUP:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {v1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->isSupertypeOf(Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1890
    new-instance v1, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;

    iget-object v2, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;->this$0:Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;

    invoke-direct {v1, v2, p2, p3}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;-><init>(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 1892
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler$1;-><init>(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;Ljava/lang/String;Ljava/lang/String;)V

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
    .line 1879
    iget-object v0, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1880
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;->attribute:Lcom/google/api/gbase/client/GoogleBaseAttribute;

    iget-object v1, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->setValue(Ljava/lang/String;)V

    .line 1882
    :cond_0
    return-void
.end method
