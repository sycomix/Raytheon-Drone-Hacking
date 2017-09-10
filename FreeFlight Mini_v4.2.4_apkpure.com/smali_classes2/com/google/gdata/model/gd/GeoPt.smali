.class public Lcom/google/gdata/model/gd/GeoPt;
.super Lcom/google/gdata/model/Element;
.source "GeoPt.java"


# static fields
.field public static final ELEV:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Void;",
            "Lcom/google/gdata/model/gd/GeoPt;",
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

.field public static final LAT:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final LON:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIME:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Lcom/google/gdata/data/DateTime;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "geoPt"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Void;

    const-class v2, Lcom/google/gdata/model/gd/GeoPt;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/GeoPt;->KEY:Lcom/google/gdata/model/ElementKey;

    .line 45
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "elev"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Float;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/GeoPt;->ELEV:Lcom/google/gdata/model/AttributeKey;

    .line 51
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "label"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/GeoPt;->LABEL:Lcom/google/gdata/model/AttributeKey;

    .line 57
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "lat"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Float;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/GeoPt;->LAT:Lcom/google/gdata/model/AttributeKey;

    .line 63
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "lon"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Float;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/GeoPt;->LON:Lcom/google/gdata/model/AttributeKey;

    .line 69
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "time"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/DateTime;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/GeoPt;->TIME:Lcom/google/gdata/model/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/google/gdata/model/gd/GeoPt;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 96
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/gd/GeoPt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/GeoPt;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 103
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
            "Lcom/google/gdata/model/gd/GeoPt;",
            ">;",
            "Lcom/google/gdata/model/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/GeoPt;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 117
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 2
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 76
    sget-object v1, Lcom/google/gdata/model/gd/GeoPt;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 81
    :cond_0
    sget-object v1, Lcom/google/gdata/model/gd/GeoPt;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 84
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    sget-object v1, Lcom/google/gdata/model/gd/GeoPt;->ELEV:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 85
    sget-object v1, Lcom/google/gdata/model/gd/GeoPt;->LABEL:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 86
    sget-object v1, Lcom/google/gdata/model/gd/GeoPt;->LAT:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 87
    sget-object v1, Lcom/google/gdata/model/gd/GeoPt;->LON:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 88
    sget-object v1, Lcom/google/gdata/model/gd/GeoPt;->TIME:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 271
    if-ne p0, p1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v1

    .line 274
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/gd/GeoPt;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 275
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 277
    check-cast v0, Lcom/google/gdata/model/gd/GeoPt;

    .line 278
    .local v0, "other":Lcom/google/gdata/model/gd/GeoPt;
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/GeoPt;->getElev()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/GeoPt;->getElev()Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/gd/GeoPt;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/GeoPt;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/GeoPt;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/gd/GeoPt;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/GeoPt;->getLat()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/GeoPt;->getLat()Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/gd/GeoPt;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/GeoPt;->getLon()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/GeoPt;->getLon()Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/gd/GeoPt;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/GeoPt;->getTime()Lcom/google/gdata/data/DateTime;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/GeoPt;->getTime()Lcom/google/gdata/data/DateTime;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/gd/GeoPt;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getElev()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/google/gdata/model/gd/GeoPt;->ELEV:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/google/gdata/model/gd/GeoPt;->LABEL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLat()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/google/gdata/model/gd/GeoPt;->LAT:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public getLon()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/google/gdata/model/gd/GeoPt;->LON:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public getTime()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lcom/google/gdata/model/gd/GeoPt;->TIME:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public hasElev()Z
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/google/gdata/model/gd/GeoPt;->ELEV:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/google/gdata/model/gd/GeoPt;->LABEL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasLat()Z
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/google/gdata/model/gd/GeoPt;->LAT:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasLon()Z
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/google/gdata/model/gd/GeoPt;->LON:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasTime()Z
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lcom/google/gdata/model/gd/GeoPt;->TIME:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 287
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 288
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/GeoPt;->getElev()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 289
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/GeoPt;->getElev()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/GeoPt;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 292
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/GeoPt;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/GeoPt;->getLat()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 295
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/GeoPt;->getLat()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 297
    :cond_2
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/GeoPt;->getLon()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 298
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/GeoPt;->getLon()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 300
    :cond_3
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/GeoPt;->getTime()Lcom/google/gdata/data/DateTime;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 301
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/GeoPt;->getTime()Lcom/google/gdata/data/DateTime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gdata/data/DateTime;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 303
    :cond_4
    return v0
.end method

.method public bridge synthetic lock()Lcom/google/gdata/model/Element;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/GeoPt;->lock()Lcom/google/gdata/model/gd/GeoPt;

    move-result-object v0

    return-object v0
.end method

.method public lock()Lcom/google/gdata/model/gd/GeoPt;
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/google/gdata/model/Element;->lock()Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/GeoPt;

    return-object v0
.end method

.method public setElev(Ljava/lang/Float;)Lcom/google/gdata/model/gd/GeoPt;
    .locals 1
    .param p1, "elev"    # Ljava/lang/Float;

    .prologue
    .line 140
    sget-object v0, Lcom/google/gdata/model/gd/GeoPt;->ELEV:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 141
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/gdata/model/gd/GeoPt;
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 169
    sget-object v0, Lcom/google/gdata/model/gd/GeoPt;->LABEL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 170
    return-object p0
.end method

.method public setLat(Ljava/lang/Float;)Lcom/google/gdata/model/gd/GeoPt;
    .locals 1
    .param p1, "lat"    # Ljava/lang/Float;

    .prologue
    .line 198
    sget-object v0, Lcom/google/gdata/model/gd/GeoPt;->LAT:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 199
    return-object p0
.end method

.method public setLon(Ljava/lang/Float;)Lcom/google/gdata/model/gd/GeoPt;
    .locals 1
    .param p1, "lon"    # Ljava/lang/Float;

    .prologue
    .line 227
    sget-object v0, Lcom/google/gdata/model/gd/GeoPt;->LON:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 228
    return-object p0
.end method

.method public setTime(Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/model/gd/GeoPt;
    .locals 1
    .param p1, "time"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 256
    sget-object v0, Lcom/google/gdata/model/gd/GeoPt;->TIME:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 257
    return-object p0
.end method
