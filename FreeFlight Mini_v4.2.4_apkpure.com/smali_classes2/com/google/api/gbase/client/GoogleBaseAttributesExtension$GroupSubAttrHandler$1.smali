.class Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler$1;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "GoogleBaseAttributesExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;

.field final synthetic val$localName:Ljava/lang/String;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1965
    iput-object p1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler$1;->this$1:Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;

    iput-object p2, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler$1;->val$uri:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler$1;->val$localName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public processEndElement()V
    .locals 3

    .prologue
    .line 1969
    const-string v0, "http://base.google.com/ns-metadata/1.0"

    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler$1;->val$uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1970
    const-string v0, "adjusted_value"

    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler$1;->val$localName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1971
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler$1;->this$1:Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;

    invoke-static {v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;->access$400(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getAdjustments()Lcom/google/api/gbase/client/Adjustments;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/gbase/client/Adjustments;->setValue(Ljava/lang/String;)V

    .line 1980
    :cond_0
    :goto_0
    return-void

    .line 1972
    :cond_1
    const-string v0, "adjusted_name"

    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler$1;->val$localName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1973
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler$1;->this$1:Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;

    invoke-static {v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;->access$400(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getAdjustments()Lcom/google/api/gbase/client/Adjustments;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/gbase/client/Adjustments;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 1978
    :cond_2
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler$1;->this$1:Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;

    invoke-static {v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;->access$400(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler$1;->val$localName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->appendSubElement(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
