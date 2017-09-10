.class Lcom/google/api/gbase/client/GmAttributes$1;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "GmAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/gbase/client/GmAttributes;->getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/gbase/client/GmAttributes;


# direct methods
.method constructor <init>(Lcom/google/api/gbase/client/GmAttributes;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/api/gbase/client/GmAttributes$1;->this$0:Lcom/google/api/gbase/client/GmAttributes;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 8
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
    const/4 v7, 0x0

    .line 152
    const-string v5, "http://base.google.com/ns-metadata/1.0"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "attribute"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 154
    new-instance v1, Lcom/google/gdata/data/AttributeHelper;

    invoke-direct {v1, p3}, Lcom/google/gdata/data/AttributeHelper;-><init>(Lorg/xml/sax/Attributes;)V

    .line 156
    .local v1, "helper":Lcom/google/gdata/data/AttributeHelper;
    const-string v5, "name"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "nameAttr":Ljava/lang/String;
    const-string v5, "type"

    invoke-virtual {v1, v5, v7}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->getInstance(Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v4

    .line 159
    .local v4, "typeAttr":Lcom/google/api/gbase/client/GoogleBaseAttributeType;
    const-string v5, "importance"

    const-class v6, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    invoke-virtual {v1, v5, v7, v6}, Lcom/google/gdata/data/AttributeHelper;->consumeEnum(Ljava/lang/String;ZLjava/lang/Class;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    .line 162
    .local v2, "importanceAttr":Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    invoke-direct {v0, v3, v4}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V

    .line 164
    .local v0, "attributeId":Lcom/google/api/gbase/client/GoogleBaseAttributeId;
    iget-object v5, p0, Lcom/google/api/gbase/client/GmAttributes$1;->this$0:Lcom/google/api/gbase/client/GmAttributes;

    invoke-virtual {v5, v0, v2}, Lcom/google/api/gbase/client/GmAttributes;->addAttribute(Lcom/google/api/gbase/client/GoogleBaseAttributeId;Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;)V

    .line 166
    invoke-virtual {v1}, Lcom/google/gdata/data/AttributeHelper;->assertAllConsumed()V

    .line 167
    new-instance v5, Lcom/google/gdata/util/XmlParser$ElementHandler;

    invoke-direct {v5}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    .line 169
    .end local v0    # "attributeId":Lcom/google/api/gbase/client/GoogleBaseAttributeId;
    .end local v1    # "helper":Lcom/google/gdata/data/AttributeHelper;
    .end local v2    # "importanceAttr":Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;
    .end local v3    # "nameAttr":Ljava/lang/String;
    .end local v4    # "typeAttr":Lcom/google/api/gbase/client/GoogleBaseAttributeType;
    :goto_0
    return-object v5

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/util/XmlParser$ElementHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v5

    goto :goto_0
.end method
