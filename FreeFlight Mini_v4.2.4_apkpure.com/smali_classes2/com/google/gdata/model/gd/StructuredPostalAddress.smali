.class public Lcom/google/gdata/model/gd/StructuredPostalAddress;
.super Lcom/google/gdata/model/Element;
.source "StructuredPostalAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/model/gd/StructuredPostalAddress$Usage;,
        Lcom/google/gdata/model/gd/StructuredPostalAddress$Rel;,
        Lcom/google/gdata/model/gd/StructuredPostalAddress$MailClass;
    }
.end annotation


# static fields
.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Void;",
            "Lcom/google/gdata/model/gd/StructuredPostalAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final LABEL:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAIL_CLASS:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIMARY:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final REL:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final USAGE:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "structuredPostalAddress"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Void;

    const-class v2, Lcom/google/gdata/model/gd/StructuredPostalAddress;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/StructuredPostalAddress;->KEY:Lcom/google/gdata/model/ElementKey;

    .line 122
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "label"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/StructuredPostalAddress;->LABEL:Lcom/google/gdata/model/AttributeKey;

    .line 128
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "mailClass"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/StructuredPostalAddress;->MAIL_CLASS:Lcom/google/gdata/model/AttributeKey;

    .line 134
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "primary"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/StructuredPostalAddress;->PRIMARY:Lcom/google/gdata/model/AttributeKey;

    .line 140
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "rel"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/StructuredPostalAddress;->REL:Lcom/google/gdata/model/AttributeKey;

    .line 146
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "usage"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/StructuredPostalAddress;->USAGE:Lcom/google/gdata/model/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/google/gdata/model/gd/StructuredPostalAddress;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 184
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/gd/StructuredPostalAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/StructuredPostalAddress;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 192
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V
    .locals 0
    .param p2, "source"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/gd/StructuredPostalAddress;",
            ">;",
            "Lcom/google/gdata/model/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/StructuredPostalAddress;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 207
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 2
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 153
    sget-object v1, Lcom/google/gdata/model/gd/StructuredPostalAddress;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    :goto_0
    return-void

    .line 158
    :cond_0
    sget-object v1, Lcom/google/gdata/model/gd/StructuredPostalAddress;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 161
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    sget-object v1, Lcom/google/gdata/model/gd/StructuredPostalAddress;->LABEL:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 162
    sget-object v1, Lcom/google/gdata/model/gd/StructuredPostalAddress;->MAIL_CLASS:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 163
    sget-object v1, Lcom/google/gdata/model/gd/StructuredPostalAddress;->PRIMARY:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 164
    sget-object v1, Lcom/google/gdata/model/gd/StructuredPostalAddress;->REL:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 165
    sget-object v1, Lcom/google/gdata/model/gd/StructuredPostalAddress;->USAGE:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 166
    sget-object v1, Lcom/google/gdata/model/gd/Agent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 167
    sget-object v1, Lcom/google/gdata/model/gd/City;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 168
    sget-object v1, Lcom/google/gdata/model/gd/Country;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 169
    sget-object v1, Lcom/google/gdata/model/gd/FormattedAddress;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 170
    sget-object v1, Lcom/google/gdata/model/gd/HouseName;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 171
    sget-object v1, Lcom/google/gdata/model/gd/Neighborhood;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 172
    sget-object v1, Lcom/google/gdata/model/gd/PoBox;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 173
    sget-object v1, Lcom/google/gdata/model/gd/PostCode;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 174
    sget-object v1, Lcom/google/gdata/model/gd/Region;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 175
    sget-object v1, Lcom/google/gdata/model/gd/Street;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 176
    sget-object v1, Lcom/google/gdata/model/gd/Subregion;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    goto :goto_0
.end method


# virtual methods
.method public getAgent()Lcom/google/gdata/model/gd/Agent;
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/google/gdata/model/gd/Agent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/Agent;

    return-object v0
.end method

.method public getCity()Lcom/google/gdata/model/gd/City;
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lcom/google/gdata/model/gd/City;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/City;

    return-object v0
.end method

.method public getCountry()Lcom/google/gdata/model/gd/Country;
    .locals 1

    .prologue
    .line 282
    sget-object v0, Lcom/google/gdata/model/gd/Country;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/Country;

    return-object v0
.end method

.method public getFormattedAddress()Lcom/google/gdata/model/gd/FormattedAddress;
    .locals 1

    .prologue
    .line 311
    sget-object v0, Lcom/google/gdata/model/gd/FormattedAddress;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/FormattedAddress;

    return-object v0
.end method

.method public getHousename()Lcom/google/gdata/model/gd/HouseName;
    .locals 1

    .prologue
    .line 342
    sget-object v0, Lcom/google/gdata/model/gd/HouseName;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/HouseName;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    sget-object v0, Lcom/google/gdata/model/gd/StructuredPostalAddress;->LABEL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMailClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    sget-object v0, Lcom/google/gdata/model/gd/StructuredPostalAddress;->MAIL_CLASS:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNeighborhood()Lcom/google/gdata/model/gd/Neighborhood;
    .locals 1

    .prologue
    .line 433
    sget-object v0, Lcom/google/gdata/model/gd/Neighborhood;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/Neighborhood;

    return-object v0
.end method

.method public getPobox()Lcom/google/gdata/model/gd/PoBox;
    .locals 1

    .prologue
    .line 463
    sget-object v0, Lcom/google/gdata/model/gd/PoBox;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/PoBox;

    return-object v0
.end method

.method public getPostcode()Lcom/google/gdata/model/gd/PostCode;
    .locals 1

    .prologue
    .line 492
    sget-object v0, Lcom/google/gdata/model/gd/PostCode;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/PostCode;

    return-object v0
.end method

.method public getPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 521
    sget-object v0, Lcom/google/gdata/model/gd/StructuredPostalAddress;->PRIMARY:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRegion()Lcom/google/gdata/model/gd/Region;
    .locals 1

    .prologue
    .line 553
    sget-object v0, Lcom/google/gdata/model/gd/Region;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/Region;

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    sget-object v0, Lcom/google/gdata/model/gd/StructuredPostalAddress;->REL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Lcom/google/gdata/model/gd/Street;
    .locals 1

    .prologue
    .line 617
    sget-object v0, Lcom/google/gdata/model/gd/Street;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/Street;

    return-object v0
.end method

.method public getSubregion()Lcom/google/gdata/model/gd/Subregion;
    .locals 1

    .prologue
    .line 651
    sget-object v0, Lcom/google/gdata/model/gd/Subregion;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/Subregion;

    return-object v0
.end method

.method public getUsage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 683
    sget-object v0, Lcom/google/gdata/model/gd/StructuredPostalAddress;->USAGE:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasAgent()Z
    .locals 1

    .prologue
    .line 243
    sget-object v0, Lcom/google/gdata/model/gd/Agent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasCity()Z
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/google/gdata/model/gd/City;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasCountry()Z
    .locals 1

    .prologue
    .line 302
    sget-object v0, Lcom/google/gdata/model/gd/Country;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasFormattedAddress()Z
    .locals 1

    .prologue
    .line 333
    sget-object v0, Lcom/google/gdata/model/gd/FormattedAddress;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasHousename()Z
    .locals 1

    .prologue
    .line 365
    sget-object v0, Lcom/google/gdata/model/gd/HouseName;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 395
    sget-object v0, Lcom/google/gdata/model/gd/StructuredPostalAddress;->LABEL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasMailClass()Z
    .locals 1

    .prologue
    .line 424
    sget-object v0, Lcom/google/gdata/model/gd/StructuredPostalAddress;->MAIL_CLASS:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasNeighborhood()Z
    .locals 1

    .prologue
    .line 454
    sget-object v0, Lcom/google/gdata/model/gd/Neighborhood;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasPobox()Z
    .locals 1

    .prologue
    .line 483
    sget-object v0, Lcom/google/gdata/model/gd/PoBox;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasPostcode()Z
    .locals 1

    .prologue
    .line 512
    sget-object v0, Lcom/google/gdata/model/gd/PostCode;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasPrimary()Z
    .locals 1

    .prologue
    .line 542
    sget-object v0, Lcom/google/gdata/model/gd/StructuredPostalAddress;->PRIMARY:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasRegion()Z
    .locals 1

    .prologue
    .line 577
    sget-object v0, Lcom/google/gdata/model/gd/Region;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasRel()Z
    .locals 1

    .prologue
    .line 606
    sget-object v0, Lcom/google/gdata/model/gd/StructuredPostalAddress;->REL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasStreet()Z
    .locals 1

    .prologue
    .line 642
    sget-object v0, Lcom/google/gdata/model/gd/Street;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasSubregion()Z
    .locals 1

    .prologue
    .line 674
    sget-object v0, Lcom/google/gdata/model/gd/Subregion;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasUsage()Z
    .locals 1

    .prologue
    .line 703
    sget-object v0, Lcom/google/gdata/model/gd/StructuredPostalAddress;->USAGE:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic lock()Lcom/google/gdata/model/Element;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/StructuredPostalAddress;->lock()Lcom/google/gdata/model/gd/StructuredPostalAddress;

    move-result-object v0

    return-object v0
.end method

.method public lock()Lcom/google/gdata/model/gd/StructuredPostalAddress;
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Lcom/google/gdata/model/Element;->lock()Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/StructuredPostalAddress;

    return-object v0
.end method

.method public setAgent(Lcom/google/gdata/model/gd/Agent;)Lcom/google/gdata/model/gd/StructuredPostalAddress;
    .locals 1
    .param p1, "agent"    # Lcom/google/gdata/model/gd/Agent;

    .prologue
    .line 231
    sget-object v0, Lcom/google/gdata/model/gd/Agent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 232
    return-object p0
.end method

.method public setCity(Lcom/google/gdata/model/gd/City;)Lcom/google/gdata/model/gd/StructuredPostalAddress;
    .locals 1
    .param p1, "city"    # Lcom/google/gdata/model/gd/City;

    .prologue
    .line 263
    sget-object v0, Lcom/google/gdata/model/gd/City;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 264
    return-object p0
.end method

.method public setCountry(Lcom/google/gdata/model/gd/Country;)Lcom/google/gdata/model/gd/StructuredPostalAddress;
    .locals 1
    .param p1, "country"    # Lcom/google/gdata/model/gd/Country;

    .prologue
    .line 292
    sget-object v0, Lcom/google/gdata/model/gd/Country;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 293
    return-object p0
.end method

.method public setFormattedAddress(Lcom/google/gdata/model/gd/FormattedAddress;)Lcom/google/gdata/model/gd/StructuredPostalAddress;
    .locals 1
    .param p1, "formattedAddress"    # Lcom/google/gdata/model/gd/FormattedAddress;

    .prologue
    .line 323
    sget-object v0, Lcom/google/gdata/model/gd/FormattedAddress;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 324
    return-object p0
.end method

.method public setHousename(Lcom/google/gdata/model/gd/HouseName;)Lcom/google/gdata/model/gd/StructuredPostalAddress;
    .locals 1
    .param p1, "housename"    # Lcom/google/gdata/model/gd/HouseName;

    .prologue
    .line 353
    sget-object v0, Lcom/google/gdata/model/gd/HouseName;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 354
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/gdata/model/gd/StructuredPostalAddress;
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 385
    sget-object v0, Lcom/google/gdata/model/gd/StructuredPostalAddress;->LABEL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 386
    return-object p0
.end method

.method public setMailClass(Ljava/lang/String;)Lcom/google/gdata/model/gd/StructuredPostalAddress;
    .locals 1
    .param p1, "mailClass"    # Ljava/lang/String;

    .prologue
    .line 414
    sget-object v0, Lcom/google/gdata/model/gd/StructuredPostalAddress;->MAIL_CLASS:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 415
    return-object p0
.end method

.method public setNeighborhood(Lcom/google/gdata/model/gd/Neighborhood;)Lcom/google/gdata/model/gd/StructuredPostalAddress;
    .locals 1
    .param p1, "neighborhood"    # Lcom/google/gdata/model/gd/Neighborhood;

    .prologue
    .line 444
    sget-object v0, Lcom/google/gdata/model/gd/Neighborhood;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 445
    return-object p0
.end method

.method public setPobox(Lcom/google/gdata/model/gd/PoBox;)Lcom/google/gdata/model/gd/StructuredPostalAddress;
    .locals 1
    .param p1, "pobox"    # Lcom/google/gdata/model/gd/PoBox;

    .prologue
    .line 473
    sget-object v0, Lcom/google/gdata/model/gd/PoBox;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 474
    return-object p0
.end method

.method public setPostcode(Lcom/google/gdata/model/gd/PostCode;)Lcom/google/gdata/model/gd/StructuredPostalAddress;
    .locals 1
    .param p1, "postcode"    # Lcom/google/gdata/model/gd/PostCode;

    .prologue
    .line 502
    sget-object v0, Lcom/google/gdata/model/gd/PostCode;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 503
    return-object p0
.end method

.method public setPrimary(Ljava/lang/Boolean;)Lcom/google/gdata/model/gd/StructuredPostalAddress;
    .locals 1
    .param p1, "primary"    # Ljava/lang/Boolean;

    .prologue
    .line 532
    sget-object v0, Lcom/google/gdata/model/gd/StructuredPostalAddress;->PRIMARY:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 533
    return-object p0
.end method

.method public setRegion(Lcom/google/gdata/model/gd/Region;)Lcom/google/gdata/model/gd/StructuredPostalAddress;
    .locals 1
    .param p1, "region"    # Lcom/google/gdata/model/gd/Region;

    .prologue
    .line 565
    sget-object v0, Lcom/google/gdata/model/gd/Region;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 566
    return-object p0
.end method

.method public setRel(Ljava/lang/String;)Lcom/google/gdata/model/gd/StructuredPostalAddress;
    .locals 1
    .param p1, "rel"    # Ljava/lang/String;

    .prologue
    .line 596
    sget-object v0, Lcom/google/gdata/model/gd/StructuredPostalAddress;->REL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 597
    return-object p0
.end method

.method public setStreet(Lcom/google/gdata/model/gd/Street;)Lcom/google/gdata/model/gd/StructuredPostalAddress;
    .locals 1
    .param p1, "street"    # Lcom/google/gdata/model/gd/Street;

    .prologue
    .line 630
    sget-object v0, Lcom/google/gdata/model/gd/Street;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 631
    return-object p0
.end method

.method public setSubregion(Lcom/google/gdata/model/gd/Subregion;)Lcom/google/gdata/model/gd/StructuredPostalAddress;
    .locals 1
    .param p1, "subregion"    # Lcom/google/gdata/model/gd/Subregion;

    .prologue
    .line 662
    sget-object v0, Lcom/google/gdata/model/gd/Subregion;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 663
    return-object p0
.end method

.method public setUsage(Ljava/lang/String;)Lcom/google/gdata/model/gd/StructuredPostalAddress;
    .locals 1
    .param p1, "usage"    # Ljava/lang/String;

    .prologue
    .line 693
    sget-object v0, Lcom/google/gdata/model/gd/StructuredPostalAddress;->USAGE:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 694
    return-object p0
.end method
