.class public Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;
.super Ljava/lang/Object;
.source "GoogleBaseAttributesExtension.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;,
        Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;
    }
.end annotation


# static fields
.field public static final APPLICATION_ATTRIBUTE:Ljava/lang/String; = "application"

.field public static final CUSTOMER_ID:Ljava/lang/String; = "customer id"

.field public static final DELIVERY_NOTES_ATTRIBUTE:Ljava/lang/String; = "delivery notes"

.field public static final DELIVERY_RADIUS_ATTRIBUTE:Ljava/lang/String; = "delivery radius"

.field public static final DESCRIPTION:Lcom/google/gdata/data/ExtensionDescription;

.field public static final EXPIRATION_DATE_ATTRIBUTE:Ljava/lang/String; = "expiration date"

.field static final GM_ADJUSTED_NAME_ATTRIBUTE:Ljava/lang/String; = "adjusted_name"

.field static final GM_ADJUSTED_VALUE_ATTRIBUTE:Ljava/lang/String; = "adjusted_value"

.field static final GM_THUMBNAIL_ATTRIBUTE:Ljava/lang/String; = "thumbnail"

.field public static final IMAGE_LINK_ATTRIBUTE:Ljava/lang/String; = "image link"

.field public static final ITEM_TYPE_ATTRIBUTE:Ljava/lang/String; = "item type"

.field public static final LABEL_ATTRIBUTE:Ljava/lang/String; = "label"

.field public static final LOCATION_ATTRIBUTE:Ljava/lang/String; = "location"

.field public static final PAYMENT_METHOD_ATTRIBUTE:Ljava/lang/String; = "payment accepted"

.field public static final PAYMENT_NOTES_ATTRIBUTE:Ljava/lang/String; = "payment notes"

.field public static final PICKUP_ATTRIBUTE:Ljava/lang/String; = "pickup"

.field public static final PRICE_ATTRIBUTE:Ljava/lang/String; = "price"

.field public static final PRICE_TYPE_ATTRIBUTE:Ljava/lang/String; = "price type"

.field public static final PRICE_UNITS_ATTRIBUTE:Ljava/lang/String; = "price units"

.field public static final QUANTITY_ATTRIBUTE:Ljava/lang/String; = "quantity"

.field public static final SHIPPING_ATTRIBUTE:Ljava/lang/String; = "shipping"

.field public static final TAX_ATTRIBUTE:Ljava/lang/String; = "tax"

.field public static final TAX_PERCENT_ATTRIBUTE:Ljava/lang/String; = "tax percent"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAX_REGION_ATTRIBUTE:Ljava/lang/String; = "tax region"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/gbase/client/GoogleBaseAttribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 257
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 258
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 259
    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseNamespaces;->G:Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 260
    const-string v1, "*"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 261
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 262
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setAggregate(Z)V

    .line 263
    sput-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->DESCRIPTION:Lcom/google/gdata/data/ExtensionDescription;

    .line 264
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->attributes:Ljava/util/List;

    .line 1944
    return-void
.end method

.method static synthetic access$000(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->convertToAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 1
    .param p0, "x0"    # Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->createExtensionAttribute(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->attributes:Ljava/util/List;

    return-object v0
.end method

.method private convertToAttributeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "localName"    # Ljava/lang/String;

    .prologue
    .line 1748
    const/16 v0, 0x5f

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convertToElementName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 1737
    const/16 v0, 0x20

    const/16 v1, 0x5f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createExtensionAttribute(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 5
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "xmlAttributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 1790
    const-string/jumbo v3, "type"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1791
    .local v2, "type":Ljava/lang/String;
    const-string v3, "access"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1792
    .local v0, "access":Ljava/lang/String;
    const-string v3, "private"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1793
    .local v1, "privateAccess":Z
    new-instance v3, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    invoke-static {v2}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->getInstance(Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v4

    invoke-direct {v3, p1, v4, v1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Z)V

    return-object v3
.end method

.method private generateAdjustments(Lcom/google/api/gbase/client/GoogleBaseAttribute;Lcom/google/gdata/util/common/xml/XmlWriter;)V
    .locals 4
    .param p1, "attribute"    # Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .param p2, "xmlWriter"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1695
    invoke-virtual {p1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->hasAdjustments()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1696
    invoke-virtual {p1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getAdjustments()Lcom/google/api/gbase/client/Adjustments;

    move-result-object v0

    .line 1697
    .local v0, "adjustments":Lcom/google/api/gbase/client/Adjustments;
    invoke-virtual {v0}, Lcom/google/api/gbase/client/Adjustments;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1698
    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseNamespaces;->GM:Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;

    const-string v2, "adjusted_name"

    invoke-virtual {v0}, Lcom/google/api/gbase/client/Adjustments;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v1, v2, v3}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->writeXmlNameValue(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    :cond_0
    invoke-virtual {v0}, Lcom/google/api/gbase/client/Adjustments;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1702
    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseNamespaces;->GM:Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;

    const-string v2, "adjusted_value"

    invoke-virtual {v0}, Lcom/google/api/gbase/client/Adjustments;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v1, v2, v3}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->writeXmlNameValue(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    .end local v0    # "adjustments":Lcom/google/api/gbase/client/Adjustments;
    :cond_1
    return-void
.end method

.method private generateAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;Lcom/google/gdata/util/common/xml/XmlWriter;)V
    .locals 4
    .param p1, "attribute"    # Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .param p2, "xmlWriter"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1624
    invoke-virtual {p1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getAttributeId()Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->convertToElementName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1625
    .local v0, "elementName":Ljava/lang/String;
    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseNamespaces;->G:Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;

    invoke-direct {p0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getXmlAttributes(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v0, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1630
    invoke-direct {p0, p1, p2}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->generateValue(Lcom/google/api/gbase/client/GoogleBaseAttribute;Lcom/google/gdata/util/common/xml/XmlWriter;)V

    .line 1631
    invoke-direct {p0, p1, p2}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->generateSubElements(Lcom/google/api/gbase/client/GoogleBaseAttribute;Lcom/google/gdata/util/common/xml/XmlWriter;)V

    .line 1632
    invoke-direct {p0, p1, p2}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->generateAdjustments(Lcom/google/api/gbase/client/GoogleBaseAttribute;Lcom/google/gdata/util/common/xml/XmlWriter;)V

    .line 1633
    invoke-direct {p0, p1, p2}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->generateSubAttributes(Lcom/google/api/gbase/client/GoogleBaseAttribute;Lcom/google/gdata/util/common/xml/XmlWriter;)V

    .line 1634
    invoke-virtual {p2}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement()V

    .line 1635
    return-void
.end method

.method private generateSubAttributes(Lcom/google/api/gbase/client/GoogleBaseAttribute;Lcom/google/gdata/util/common/xml/XmlWriter;)V
    .locals 3
    .param p1, "attribute"    # Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .param p2, "xmlWriter"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1678
    invoke-virtual {p1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->hasSubAttributes()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1679
    invoke-virtual {p1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubAttributes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 1680
    .local v0, "element":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    invoke-direct {p0, v0, p2}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->generateAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;Lcom/google/gdata/util/common/xml/XmlWriter;)V

    goto :goto_0

    .line 1683
    .end local v0    # "element":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private generateSubElements(Lcom/google/api/gbase/client/GoogleBaseAttribute;Lcom/google/gdata/util/common/xml/XmlWriter;)V
    .locals 5
    .param p1, "attribute"    # Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .param p2, "xmlWriter"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1660
    invoke-virtual {p1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->hasSubElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1661
    invoke-virtual {p1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubElementNames()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1662
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubElementValues(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1663
    .local v0, "element":Ljava/lang/String;
    sget-object v4, Lcom/google/api/gbase/client/GoogleBaseNamespaces;->G:Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;

    invoke-direct {p0, p2, v4, v3, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->writeXmlNameValue(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1667
    .end local v0    # "element":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private generateValue(Lcom/google/api/gbase/client/GoogleBaseAttribute;Lcom/google/gdata/util/common/xml/XmlWriter;)V
    .locals 1
    .param p1, "attribute"    # Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .param p2, "xmlWriter"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1646
    invoke-virtual {p1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1647
    invoke-virtual {p1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->characters(Ljava/lang/String;)V

    .line 1649
    :cond_0
    return-void
.end method

.method private getAttributeAsString(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .prologue
    .line 727
    invoke-virtual {p0, p1, p2}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    .line 728
    .local v0, "attribute":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    if-nez v0, :cond_0

    .line 729
    const/4 v1, 0x0

    .line 731
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getAttributeValuesAsString(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Ljava/util/List;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/google/api/gbase/client/GoogleBaseAttributeType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/api/gbase/client/GoogleBaseAttributeType;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 762
    invoke-virtual {p0, p1, p2}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getAttributes(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Ljava/util/List;

    move-result-object v2

    .line 764
    .local v2, "labels":Ljava/util/List;, "Ljava/util/List<+Lcom/google/api/gbase/client/GoogleBaseAttribute;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 765
    .local v3, "retval":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 766
    .local v1, "label":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    invoke-virtual {v1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 768
    .end local v1    # "label":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    :cond_0
    return-object v3
.end method

.method private getXmlAttributes(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Ljava/util/Collection;
    .locals 5
    .param p1, "attribute"    # Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gbase/client/GoogleBaseAttribute;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1765
    invoke-virtual {p1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getAttributeId()Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->getType()Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v1

    .line 1766
    .local v1, "type":Lcom/google/api/gbase/client/GoogleBaseAttributeType;
    if-nez v1, :cond_1

    .line 1767
    const/4 v0, 0x0

    .line 1774
    :cond_0
    :goto_0
    return-object v0

    .line 1769
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1770
    .local v0, "attributes":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    new-instance v2, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string/jumbo v3, "type"

    invoke-virtual {v1}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1771
    invoke-virtual {p1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1772
    new-instance v2, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v3, "access"

    const-string v4, "private"

    invoke-direct {v2, v3, v4}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private hasNameAndType(Lcom/google/api/gbase/client/GoogleBaseAttribute;Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Z
    .locals 2
    .param p1, "attr"    # Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .prologue
    .line 586
    invoke-virtual {p1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getAttributeId()Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->getType()Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v0

    .line 587
    .local v0, "subtype":Lcom/google/api/gbase/client/GoogleBaseAttributeType;
    invoke-virtual {p1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getAttributeId()Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {p3, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->isSupertypeOf(Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writeXmlNameValue(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "xmlWriter"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "namespace"    # Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1721
    invoke-direct {p0, p3}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->convertToElementName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v1, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1725
    invoke-virtual {p1, p4}, Lcom/google/gdata/util/common/xml/XmlWriter;->characters(Ljava/lang/String;)V

    .line 1726
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement()V

    .line 1727
    return-void
.end method


# virtual methods
.method public addAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 1
    .param p1, "attribute"    # Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->attributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    return-object p1
.end method

.method public addBooleanAttribute(Ljava/lang/String;Z)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 1256
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->BOOLEAN:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    return-object v0
.end method

.method public addDateAttribute(Ljava/lang/String;Lcom/google/gdata/data/DateTime;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "date"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 1195
    invoke-virtual {p2}, Lcom/google/gdata/data/DateTime;->isDateOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DateTime should be only a date, NOT a date and a time. Call addDateTimeAttribute() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1199
    :cond_0
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->DATE:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {p2}, Lcom/google/gdata/data/DateTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    return-object v0
.end method

.method public addDateTimeAttribute(Ljava/lang/String;Lcom/google/gdata/data/DateTime;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dateTime"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 1219
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->DATE_TIME:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {p2}, Lcom/google/gdata/data/DateTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    return-object v0
.end method

.method public addDateTimeRangeAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/DateTimeRange;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dateTimeRange"    # Lcom/google/api/gbase/client/DateTimeRange;

    .prologue
    .line 1597
    invoke-virtual {p2}, Lcom/google/api/gbase/client/DateTimeRange;->isDateTimeOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1599
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty DateTimeRange. Add it as a single DateTime using addDateTimeAttribute() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1602
    :cond_0
    invoke-static {p1, p2}, Lcom/google/api/gbase/client/ConversionUtil;->createAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/DateTimeRange;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    return-object v0
.end method

.method public addFloatAttribute(Ljava/lang/String;F)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 1039
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->FLOAT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    return-object v0
.end method

.method public addFloatUnitAttribute(Ljava/lang/String;FLjava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "unit"    # Ljava/lang/String;

    .prologue
    .line 1117
    new-instance v0, Lcom/google/api/gbase/client/NumberUnit;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/google/api/gbase/client/NumberUnit;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addFloatUnitAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/NumberUnit;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    return-object v0
.end method

.method public addFloatUnitAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/NumberUnit;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/api/gbase/client/NumberUnit",
            "<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/google/api/gbase/client/GoogleBaseAttribute;"
        }
    .end annotation

    .prologue
    .line 1135
    .local p2, "value":Lcom/google/api/gbase/client/NumberUnit;, "Lcom/google/api/gbase/client/NumberUnit<Ljava/lang/Float;>;"
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->FLOAT_UNIT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {p2}, Lcom/google/api/gbase/client/NumberUnit;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    return-object v0
.end method

.method public addGroupAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/Group;)V
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "group"    # Lcom/google/api/gbase/client/Group;

    .prologue
    .line 1262
    invoke-static {p1, p2}, Lcom/google/api/gbase/client/ConversionUtil;->createAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/Group;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 1263
    return-void
.end method

.method public addImageLink(Ljava/lang/String;)V
    .locals 1
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 322
    const-string v0, "image link"

    invoke-virtual {p0, v0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addUrlAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 323
    return-void
.end method

.method public addIntAttribute(Ljava/lang/String;I)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 1020
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->INT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    return-object v0
.end method

.method public addIntUnitAttribute(Ljava/lang/String;ILjava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "unit"    # Ljava/lang/String;

    .prologue
    .line 1078
    new-instance v0, Lcom/google/api/gbase/client/NumberUnit;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/google/api/gbase/client/NumberUnit;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addIntUnitAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/NumberUnit;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    return-object v0
.end method

.method public addIntUnitAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/NumberUnit;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/api/gbase/client/NumberUnit",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/api/gbase/client/GoogleBaseAttribute;"
        }
    .end annotation

    .prologue
    .line 1096
    .local p2, "value":Lcom/google/api/gbase/client/NumberUnit;, "Lcom/google/api/gbase/client/NumberUnit<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->INT_UNIT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {p2}, Lcom/google/api/gbase/client/NumberUnit;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    return-object v0
.end method

.method public addLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 282
    const-string v0, "label"

    invoke-virtual {p0, v0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addTextAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 283
    return-void
.end method

.method public addLocationAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/Location;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "location"    # Lcom/google/api/gbase/client/Location;

    .prologue
    .line 1530
    invoke-static {p1, p2}, Lcom/google/api/gbase/client/ConversionUtil;->createAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/Location;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    return-object v0
.end method

.method public addLocationAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 1511
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->LOCATION:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {v0, p1, v1, p2}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    return-object v0
.end method

.method public addNumberAttribute(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;

    .prologue
    .line 1058
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->NUMBER:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    return-object v0
.end method

.method public addNumberUnitAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/NumberUnit;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/api/gbase/client/NumberUnit",
            "<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/google/api/gbase/client/GoogleBaseAttribute;"
        }
    .end annotation

    .prologue
    .line 1174
    .local p2, "value":Lcom/google/api/gbase/client/NumberUnit;, "Lcom/google/api/gbase/client/NumberUnit<Ljava/lang/Number;>;"
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->NUMBER_UNIT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {p2}, Lcom/google/api/gbase/client/NumberUnit;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    return-object v0
.end method

.method public addNumberUnitAttribute(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;
    .param p3, "unit"    # Ljava/lang/String;

    .prologue
    .line 1156
    new-instance v0, Lcom/google/api/gbase/client/NumberUnit;

    invoke-direct {v0, p2, p3}, Lcom/google/api/gbase/client/NumberUnit;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addNumberUnitAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/NumberUnit;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    return-object v0
.end method

.method public addPaymentMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 338
    const-string v0, "payment accepted"

    invoke-virtual {p0, v0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addTextAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 339
    return-void
.end method

.method public addReferenceAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1002
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->REFERENCE:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {v0, p1, v1, p2}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    return-object v0
.end method

.method public addShipping(Lcom/google/api/gbase/client/Shipping;)V
    .locals 1
    .param p1, "shipping"    # Lcom/google/api/gbase/client/Shipping;

    .prologue
    .line 420
    const-string v0, "shipping"

    invoke-virtual {p0, v0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addShippingAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/Shipping;)V

    .line 421
    return-void
.end method

.method public addShippingAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/Shipping;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "shipping"    # Lcom/google/api/gbase/client/Shipping;

    .prologue
    .line 1364
    invoke-static {p1, p2}, Lcom/google/api/gbase/client/ConversionUtil;->createAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/Shipping;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 1365
    return-void
.end method

.method public addTax(Lcom/google/api/gbase/client/Tax;)V
    .locals 1
    .param p1, "tax"    # Lcom/google/api/gbase/client/Tax;

    .prologue
    .line 430
    const-string/jumbo v0, "tax"

    invoke-virtual {p0, v0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addTaxAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/Tax;)V

    .line 431
    return-void
.end method

.method public addTaxAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/Tax;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tax"    # Lcom/google/api/gbase/client/Tax;

    .prologue
    .line 1425
    invoke-static {p1, p2}, Lcom/google/api/gbase/client/ConversionUtil;->createAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/Tax;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 1426
    return-void
.end method

.method public addTextAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 983
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->TEXT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {v0, p1, v1, p2}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    return-object v0
.end method

.method public addUrlAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1237
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->URL:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {v0, p1, v1, p2}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    return-object v0
.end method

.method public clearAttributes()V
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 677
    return-void
.end method

.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "xmlWriter"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extensionProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1617
    iget-object v2, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->attributes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 1618
    .local v0, "attribute":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    invoke-direct {p0, v0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->generateAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;Lcom/google/gdata/util/common/xml/XmlWriter;)V

    goto :goto_0

    .line 1620
    .end local v0    # "attribute":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    :cond_0
    return-void
.end method

.method public getApplication()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1825
    const-string v0, "application"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getTextAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 559
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .prologue
    .line 576
    iget-object v2, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->attributes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 577
    .local v0, "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    invoke-direct {p0, v0, p1, p2}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->hasNameAndType(Lcom/google/api/gbase/client/GoogleBaseAttribute;Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 581
    .end local v0    # "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/api/gbase/client/GoogleBaseAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->attributes:Ljava/util/List;

    return-object v0
.end method

.method public getAttributes(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/api/gbase/client/GoogleBaseAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 618
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getAttributes(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Ljava/util/List;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/google/api/gbase/client/GoogleBaseAttributeType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/api/gbase/client/GoogleBaseAttributeType;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/api/gbase/client/GoogleBaseAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 601
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .local v2, "retval":Ljava/util/List;, "Ljava/util/List<Lcom/google/api/gbase/client/GoogleBaseAttribute;>;"
    iget-object v3, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->attributes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 603
    .local v0, "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    invoke-direct {p0, v0, p1, p2}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->hasNameAndType(Lcom/google/api/gbase/client/GoogleBaseAttribute;Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 604
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 607
    .end local v0    # "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    :cond_1
    return-object v2
.end method

.method public getBooleanAttribute(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 835
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->BOOLEAN:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getAttributeAsString(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->toBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 530
    const-string v0, "customer id"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getIntAttribute(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDateAttribute(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 872
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->DATE:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getAttributeAsString(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->toDateOrDateTime(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public getDateRangeAttribute(Ljava/lang/String;)Lcom/google/api/gbase/client/DateTimeRange;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 893
    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->DATE_TIME_RANGE:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {p0, p1, v1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    .line 895
    .local v0, "attribute":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->extractDateTimeRange(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/DateTimeRange;

    move-result-object v1

    return-object v1
.end method

.method public getDateTimeAttribute(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 853
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->DATE_TIME:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getAttributeAsString(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->toDateOrDateTime(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public getDateTimeRangeAttribute(Ljava/lang/String;)Lcom/google/api/gbase/client/DateTimeRange;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1548
    invoke-virtual {p0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getAttribute(Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    .line 1549
    .local v0, "value":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    if-nez v0, :cond_0

    .line 1550
    const/4 v1, 0x0

    .line 1552
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->extractDateTimeRange(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/DateTimeRange;

    move-result-object v1

    goto :goto_0
.end method

.method public getDateTimeRangeAttributes(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/api/gbase/client/DateTimeRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1569
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1570
    .local v2, "retval":Ljava/util/List;, "Ljava/util/List<Lcom/google/api/gbase/client/DateTimeRange;>;"
    iget-object v3, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->attributes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 1571
    .local v0, "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    sget-object v3, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->DATE_TIME_RANGE:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {p0, v0, p1, v3}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->hasNameAndType(Lcom/google/api/gbase/client/GoogleBaseAttribute;Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1573
    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->extractDateTimeRange(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/DateTimeRange;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1576
    .end local v0    # "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    :cond_1
    return-object v2
.end method

.method public getDeliveryNotes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    const-string v0, "delivery notes"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getTextAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeliveryRadius()Lcom/google/api/gbase/client/NumberUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gbase/client/NumberUnit",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    const-string v0, "delivery radius"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getFloatUnitAttribute(Ljava/lang/String;)Lcom/google/api/gbase/client/NumberUnit;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationDate()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 299
    const-string v0, "expiration date"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getDateTimeAttribute(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public getFloatAttribute(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 784
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->FLOAT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getAttributeAsString(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->toFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getFloatUnitAttribute(Ljava/lang/String;)Lcom/google/api/gbase/client/NumberUnit;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/api/gbase/client/NumberUnit",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 944
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->FLOAT_UNIT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getAttributeAsString(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->toFloatUnit(Ljava/lang/String;)Lcom/google/api/gbase/client/NumberUnit;

    move-result-object v0

    return-object v0
.end method

.method public getGroupAttribute(Ljava/lang/String;)Lcom/google/api/gbase/client/Group;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1278
    invoke-virtual {p0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getAttribute(Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    .line 1279
    .local v0, "value":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    if-nez v0, :cond_0

    .line 1280
    const/4 v1, 0x0

    .line 1282
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->extractGroup(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Group;

    move-result-object v1

    goto :goto_0
.end method

.method public getGroupAttributes(Ljava/lang/String;)Ljava/util/Collection;
    .locals 4
    .param p1, "groupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/api/gbase/client/Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1297
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1298
    .local v2, "retval":Ljava/util/List;, "Ljava/util/List<Lcom/google/api/gbase/client/Group;>;"
    iget-object v3, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->attributes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 1299
    .local v0, "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    sget-object v3, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->GROUP:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {p0, v0, p1, v3}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->hasNameAndType(Lcom/google/api/gbase/client/GoogleBaseAttribute;Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1300
    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->extractGroup(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Group;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1303
    .end local v0    # "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    :cond_1
    return-object v2
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "extensionProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1812
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;

    invoke-direct {v0, p0, p3, p4}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;-><init>(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object v0
.end method

.method public getImageLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    const-string v0, "image link"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getUrlAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageLinks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    const-string v0, "image link"

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->URL:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {p0, v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getAttributeValuesAsString(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIntAttribute(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 801
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->INT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getAttributeAsString(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->toInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getIntUnitAttribute(Ljava/lang/String;)Lcom/google/api/gbase/client/NumberUnit;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/api/gbase/client/NumberUnit",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 926
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->INT_UNIT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getAttributeAsString(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->toIntUnit(Ljava/lang/String;)Lcom/google/api/gbase/client/NumberUnit;

    move-result-object v0

    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    const-string v0, "item type"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getTextAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabels()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    const-string v0, "label"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getTextAttributeValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getLocationAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocationAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1443
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->LOCATION:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getAttributeAsString(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocationAttributeAsObject(Ljava/lang/String;)Lcom/google/api/gbase/client/Location;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1457
    invoke-virtual {p0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getAttribute(Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    .line 1458
    .local v0, "attribute":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    if-nez v0, :cond_0

    .line 1459
    const/4 v1, 0x0

    .line 1461
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->extractLocation(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Location;

    move-result-object v1

    goto :goto_0
.end method

.method public getLocationAttributes(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1474
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->LOCATION:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getAttributeValuesAsString(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLocationAttributesAsObjects(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/gbase/client/Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1488
    sget-object v4, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->LOCATION:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {p0, p1, v4}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getAttributes(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Ljava/util/List;

    move-result-object v1

    .line 1490
    .local v1, "attributes":Ljava/util/List;, "Ljava/util/List<+Lcom/google/api/gbase/client/GoogleBaseAttribute;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1491
    .local v3, "retval":Ljava/util/List;, "Ljava/util/List<Lcom/google/api/gbase/client/Location;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 1492
    .local v0, "attribute":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->extractLocation(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Location;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1494
    .end local v0    # "attribute":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    :cond_0
    return-object v3
.end method

.method public getNumberAttribute(Ljava/lang/String;)Ljava/lang/Number;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 818
    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->NUMBER:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {p0, p1, v1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    .line 820
    .local v0, "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->extractNumber(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Ljava/lang/Number;

    move-result-object v1

    return-object v1
.end method

.method public getNumberUnitAttribute(Ljava/lang/String;)Lcom/google/api/gbase/client/NumberUnit;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/api/gbase/client/NumberUnit",
            "<+",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 964
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->NUMBER_UNIT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->extractNumberUnit(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/NumberUnit;

    move-result-object v0

    return-object v0
.end method

.method public getPaymentMethods()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    const-string v0, "payment accepted"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getTextAttributeValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPaymentNotes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    const-string v0, "payment notes"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getTextAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPickup()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 504
    const-string v0, "pickup"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getBooleanAttribute(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getPrice()Lcom/google/api/gbase/client/NumberUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gbase/client/NumberUnit",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    const-string v0, "price"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getFloatUnitAttribute(Ljava/lang/String;)Lcom/google/api/gbase/client/NumberUnit;

    move-result-object v0

    return-object v0
.end method

.method public getPriceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    const-string v0, "price type"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getTextAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriceUnits()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    const-string v0, "price units"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getTextAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuantity()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 404
    const-string v0, "quantity"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getIntAttribute(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getReferenceAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 710
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->REFERENCE:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getAttributeAsString(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShipping()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/api/gbase/client/Shipping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    const-string v0, "shipping"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getShippingAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getShippingAttribute(Ljava/lang/String;)Lcom/google/api/gbase/client/Shipping;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1321
    invoke-virtual {p0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getAttribute(Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    .line 1322
    .local v0, "value":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    if-nez v0, :cond_0

    .line 1323
    const/4 v1, 0x0

    .line 1325
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->extractShipping(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Shipping;

    move-result-object v1

    goto :goto_0
.end method

.method public getShippingAttributes(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/api/gbase/client/Shipping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1342
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1343
    .local v2, "retval":Ljava/util/List;, "Ljava/util/List<Lcom/google/api/gbase/client/Shipping;>;"
    iget-object v3, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->attributes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 1344
    .local v0, "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    sget-object v3, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->SHIPPING:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {p0, v0, p1, v3}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->hasNameAndType(Lcom/google/api/gbase/client/GoogleBaseAttribute;Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1345
    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->extractShipping(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Shipping;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1348
    .end local v0    # "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    :cond_1
    return-object v2
.end method

.method public getTax()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/api/gbase/client/Tax;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    const-string/jumbo v0, "tax"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getTaxAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTaxAttribute(Ljava/lang/String;)Lcom/google/api/gbase/client/Tax;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1382
    invoke-virtual {p0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getAttribute(Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    .line 1383
    .local v0, "value":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    if-nez v0, :cond_0

    .line 1384
    const/4 v1, 0x0

    .line 1386
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->extractTax(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Tax;

    move-result-object v1

    goto :goto_0
.end method

.method public getTaxAttributes(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/api/gbase/client/Tax;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1403
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1404
    .local v2, "retval":Ljava/util/List;, "Ljava/util/List<Lcom/google/api/gbase/client/Tax;>;"
    iget-object v3, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->attributes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 1405
    .local v0, "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    sget-object v3, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->TAX:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {p0, v0, p1, v3}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->hasNameAndType(Lcom/google/api/gbase/client/GoogleBaseAttribute;Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1406
    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->extractTax(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Tax;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1409
    .end local v0    # "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    :cond_1
    return-object v2
.end method

.method public getTaxPercent()Ljava/lang/Float;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 456
    const-string/jumbo v0, "tax percent"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getFloatAttribute(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getTaxRegion()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 477
    const-string/jumbo v0, "tax region"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getTextAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 696
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->TEXT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getAttributeAsString(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextAttributeValues(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 748
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->TEXT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getAttributeValuesAsString(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUrlAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 909
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->URL:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->getAttributeAsString(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .prologue
    .line 643
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->attributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 644
    return-void
.end method

.method public removeAttributes(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 652
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->removeAttributes(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V

    .line 653
    return-void
.end method

.method public removeAttributes(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .prologue
    .line 663
    iget-object v2, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->attributes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 664
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/api/gbase/client/GoogleBaseAttribute;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 665
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 666
    .local v0, "attribute":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    invoke-direct {p0, v0, p1, p2}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->hasNameAndType(Lcom/google/api/gbase/client/GoogleBaseAttribute;Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 667
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 670
    .end local v0    # "attribute":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    :cond_1
    return-void
.end method

.method public setApplication(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1844
    const-string v0, "application"

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->TEXT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {p0, v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->removeAttributes(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V

    .line 1845
    const-string v0, "application"

    invoke-virtual {p0, v0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addTextAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 1846
    return-void
.end method

.method public setDeliveryNotes(Ljava/lang/String;)V
    .locals 2
    .param p1, "notes"    # Ljava/lang/String;

    .prologue
    .line 509
    const-string v0, "delivery notes"

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->TEXT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {p0, v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->removeAttributes(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V

    .line 510
    const-string v0, "delivery notes"

    invoke-virtual {p0, v0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addTextAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 511
    return-void
.end method

.method public setDeliveryRadius(FLjava/lang/String;)V
    .locals 2
    .param p1, "value"    # F
    .param p2, "unit"    # Ljava/lang/String;

    .prologue
    .line 482
    new-instance v0, Lcom/google/api/gbase/client/NumberUnit;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/api/gbase/client/NumberUnit;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->setDeliveryRadius(Lcom/google/api/gbase/client/NumberUnit;)V

    .line 483
    return-void
.end method

.method public setDeliveryRadius(Lcom/google/api/gbase/client/NumberUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gbase/client/NumberUnit",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 487
    .local p1, "value":Lcom/google/api/gbase/client/NumberUnit;, "Lcom/google/api/gbase/client/NumberUnit<Ljava/lang/Float;>;"
    const-string v0, "delivery radius"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->removeAttributes(Ljava/lang/String;)V

    .line 488
    const-string v0, "delivery radius"

    invoke-virtual {p0, v0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addFloatUnitAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/NumberUnit;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 489
    return-void
.end method

.method public setExpirationDate(Lcom/google/gdata/data/DateTime;)V
    .locals 2
    .param p1, "date"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 304
    const-string v0, "expiration date"

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->DATE_TIME:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {p0, v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->removeAttributes(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V

    .line 306
    const-string v0, "expiration date"

    invoke-virtual {p0, v0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addDateTimeAttribute(Ljava/lang/String;Lcom/google/gdata/data/DateTime;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 307
    return-void
.end method

.method public setItemType(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 293
    const-string v0, "item type"

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->TEXT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {p0, v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->removeAttributes(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V

    .line 294
    const-string v0, "item type"

    invoke-virtual {p0, v0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addTextAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 295
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 381
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->removeAttributes(Ljava/lang/String;)V

    .line 382
    const-string v0, "location"

    invoke-virtual {p0, v0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addLocationAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 383
    return-void
.end method

.method public setPaymentNotes(Ljava/lang/String;)V
    .locals 2
    .param p1, "notes"    # Ljava/lang/String;

    .prologue
    .line 520
    const-string v0, "payment notes"

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->TEXT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {p0, v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->removeAttributes(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V

    .line 521
    const-string v0, "payment notes"

    invoke-virtual {p0, v0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addTextAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 522
    return-void
.end method

.method public setPickup(Z)V
    .locals 2
    .param p1, "pickup"    # Z

    .prologue
    .line 498
    const-string v0, "pickup"

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->BOOLEAN:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {p0, v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->removeAttributes(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V

    .line 499
    const-string v0, "pickup"

    invoke-virtual {p0, v0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addBooleanAttribute(Ljava/lang/String;Z)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 500
    return-void
.end method

.method public setPrice(FLjava/lang/String;)V
    .locals 2
    .param p1, "value"    # F
    .param p2, "currency"    # Ljava/lang/String;

    .prologue
    .line 367
    new-instance v0, Lcom/google/api/gbase/client/NumberUnit;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/api/gbase/client/NumberUnit;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->setPrice(Lcom/google/api/gbase/client/NumberUnit;)V

    .line 368
    return-void
.end method

.method public setPrice(Lcom/google/api/gbase/client/NumberUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gbase/client/NumberUnit",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, "value":Lcom/google/api/gbase/client/NumberUnit;, "Lcom/google/api/gbase/client/NumberUnit<Ljava/lang/Float;>;"
    const-string v0, "price"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->removeAttributes(Ljava/lang/String;)V

    .line 357
    const-string v0, "price"

    invoke-virtual {p0, v0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addFloatUnitAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/NumberUnit;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 358
    return-void
.end method

.method public setPriceType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 387
    const-string v0, "price type"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->removeAttributes(Ljava/lang/String;)V

    .line 388
    const-string v0, "price type"

    invoke-virtual {p0, v0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addTextAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 389
    return-void
.end method

.method public setPriceUnits(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 409
    const-string v0, "price units"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->removeAttributes(Ljava/lang/String;)V

    .line 410
    const-string v0, "price units"

    invoke-virtual {p0, v0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addTextAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 411
    return-void
.end method

.method public setQuantity(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 398
    const-string v0, "quantity"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->removeAttributes(Ljava/lang/String;)V

    .line 399
    const-string v0, "quantity"

    invoke-virtual {p0, v0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addIntAttribute(Ljava/lang/String;I)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 400
    return-void
.end method

.method public setTaxPercent(F)V
    .locals 1
    .param p1, "taxPercent"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 445
    const-string/jumbo v0, "tax percent"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->removeAttributes(Ljava/lang/String;)V

    .line 446
    const-string/jumbo v0, "tax percent"

    invoke-virtual {p0, v0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addFloatAttribute(Ljava/lang/String;F)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 447
    return-void
.end method

.method public setTaxRegion(Ljava/lang/String;)V
    .locals 1
    .param p1, "region"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 466
    const-string/jumbo v0, "tax region"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->removeAttributes(Ljava/lang/String;)V

    .line 467
    const-string/jumbo v0, "tax region"

    invoke-virtual {p0, v0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->addTextAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 468
    return-void
.end method
