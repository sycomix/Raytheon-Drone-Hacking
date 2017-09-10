.class Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "GoogleBaseAttributesExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupSubAttrHandler"
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
    .line 1948
    iput-object p1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;->this$0:Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    .line 1949
    invoke-static {p1, p2}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->access$000(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1950
    .local v0, "attributeName":Ljava/lang/String;
    invoke-static {p1, v0, p3}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->access$100(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;->attribute:Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 1951
    invoke-static {p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->access$200(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->access$200(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    iget-object v2, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;->attribute:Lcom/google/api/gbase/client/GoogleBaseAttribute;

    invoke-virtual {v1, v2}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->addSubAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)V

    .line 1952
    return-void
.end method

.method static synthetic access$400(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 1
    .param p0, "x0"    # Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;

    .prologue
    .line 1944
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;->attribute:Lcom/google/api/gbase/client/GoogleBaseAttribute;

    return-object v0
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 1965
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler$1;-><init>(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public processEndElement()V
    .locals 2

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1957
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;->attribute:Lcom/google/api/gbase/client/GoogleBaseAttribute;

    iget-object v1, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->setValue(Ljava/lang/String;)V

    .line 1959
    :cond_0
    return-void
.end method
