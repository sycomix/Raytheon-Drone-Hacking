.class public Lcom/google/gdata/model/gd/Rating;
.super Lcom/google/gdata/model/Element;
.source "Rating.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/model/gd/Rating$Rel;
    }
.end annotation


# static fields
.field public static final AVERAGE:Lcom/google/gdata/model/AttributeKey;
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
            "Lcom/google/gdata/model/gd/Rating;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIN:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUM_RATERS:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/Integer;",
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

.field public static final VALUE:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 65
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "rating"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Void;

    const-class v2, Lcom/google/gdata/model/gd/Rating;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/Rating;->KEY:Lcom/google/gdata/model/ElementKey;

    .line 71
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "average"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Float;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/Rating;->AVERAGE:Lcom/google/gdata/model/AttributeKey;

    .line 77
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "max"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/Rating;->MAX:Lcom/google/gdata/model/AttributeKey;

    .line 83
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "min"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/Rating;->MIN:Lcom/google/gdata/model/AttributeKey;

    .line 89
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "numRaters"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/Rating;->NUM_RATERS:Lcom/google/gdata/model/AttributeKey;

    .line 96
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "rel"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/Rating;->REL:Lcom/google/gdata/model/AttributeKey;

    .line 102
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "value"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/Rating;->VALUE:Lcom/google/gdata/model/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/google/gdata/model/gd/Rating;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 130
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/gd/Rating;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/Rating;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 137
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
            "Lcom/google/gdata/model/gd/Rating;",
            ">;",
            "Lcom/google/gdata/model/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/Rating;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 151
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 2
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 109
    sget-object v1, Lcom/google/gdata/model/gd/Rating;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 114
    :cond_0
    sget-object v1, Lcom/google/gdata/model/gd/Rating;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 117
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    sget-object v1, Lcom/google/gdata/model/gd/Rating;->AVERAGE:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 118
    sget-object v1, Lcom/google/gdata/model/gd/Rating;->MAX:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 119
    sget-object v1, Lcom/google/gdata/model/gd/Rating;->MIN:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 120
    sget-object v1, Lcom/google/gdata/model/gd/Rating;->NUM_RATERS:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 121
    sget-object v1, Lcom/google/gdata/model/gd/Rating;->REL:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 122
    sget-object v1, Lcom/google/gdata/model/gd/Rating;->VALUE:Lcom/google/gdata/model/AttributeKey;

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

    .line 347
    if-ne p0, p1, :cond_1

    .line 354
    :cond_0
    :goto_0
    return v1

    .line 350
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/gd/Rating;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 351
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 353
    check-cast v0, Lcom/google/gdata/model/gd/Rating;

    .line 354
    .local v0, "other":Lcom/google/gdata/model/gd/Rating;
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Rating;->getAverage()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/Rating;->getAverage()Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/gd/Rating;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Rating;->getMax()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/Rating;->getMax()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/gd/Rating;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Rating;->getMin()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/Rating;->getMin()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/gd/Rating;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Rating;->getNumRaters()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/Rating;->getNumRaters()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/gd/Rating;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Rating;->getRel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/Rating;->getRel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/gd/Rating;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Rating;->getValue()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/Rating;->getValue()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/gd/Rating;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getAverage()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/google/gdata/model/gd/Rating;->AVERAGE:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public getMax()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/google/gdata/model/gd/Rating;->MAX:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getMin()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/google/gdata/model/gd/Rating;->MIN:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getNumRaters()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/google/gdata/model/gd/Rating;->NUM_RATERS:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    sget-object v0, Lcom/google/gdata/model/gd/Rating;->REL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/google/gdata/model/gd/Rating;->VALUE:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public hasAverage()Z
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/google/gdata/model/gd/Rating;->AVERAGE:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasMax()Z
    .locals 1

    .prologue
    .line 213
    sget-object v0, Lcom/google/gdata/model/gd/Rating;->MAX:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasMin()Z
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lcom/google/gdata/model/gd/Rating;->MIN:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasNumRaters()Z
    .locals 1

    .prologue
    .line 277
    sget-object v0, Lcom/google/gdata/model/gd/Rating;->NUM_RATERS:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasRel()Z
    .locals 1

    .prologue
    .line 313
    sget-object v0, Lcom/google/gdata/model/gd/Rating;->REL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 342
    sget-object v0, Lcom/google/gdata/model/gd/Rating;->VALUE:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 364
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 365
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Rating;->getAverage()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 366
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Rating;->getAverage()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Rating;->getMax()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 369
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Rating;->getMax()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 371
    :cond_1
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Rating;->getMin()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 372
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Rating;->getMin()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 374
    :cond_2
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Rating;->getNumRaters()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 375
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Rating;->getNumRaters()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 377
    :cond_3
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Rating;->getRel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 378
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Rating;->getRel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 380
    :cond_4
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Rating;->getValue()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 381
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Rating;->getValue()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 383
    :cond_5
    return v0
.end method

.method public bridge synthetic lock()Lcom/google/gdata/model/Element;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Rating;->lock()Lcom/google/gdata/model/gd/Rating;

    move-result-object v0

    return-object v0
.end method

.method public lock()Lcom/google/gdata/model/gd/Rating;
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/google/gdata/model/Element;->lock()Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/Rating;

    return-object v0
.end method

.method public setAverage(Ljava/lang/Float;)Lcom/google/gdata/model/gd/Rating;
    .locals 1
    .param p1, "average"    # Ljava/lang/Float;

    .prologue
    .line 174
    sget-object v0, Lcom/google/gdata/model/gd/Rating;->AVERAGE:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 175
    return-object p0
.end method

.method public setMax(Ljava/lang/Integer;)Lcom/google/gdata/model/gd/Rating;
    .locals 1
    .param p1, "max"    # Ljava/lang/Integer;

    .prologue
    .line 203
    sget-object v0, Lcom/google/gdata/model/gd/Rating;->MAX:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 204
    return-object p0
.end method

.method public setMin(Ljava/lang/Integer;)Lcom/google/gdata/model/gd/Rating;
    .locals 1
    .param p1, "min"    # Ljava/lang/Integer;

    .prologue
    .line 232
    sget-object v0, Lcom/google/gdata/model/gd/Rating;->MIN:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 233
    return-object p0
.end method

.method public setNumRaters(Ljava/lang/Integer;)Lcom/google/gdata/model/gd/Rating;
    .locals 1
    .param p1, "numRaters"    # Ljava/lang/Integer;

    .prologue
    .line 265
    sget-object v0, Lcom/google/gdata/model/gd/Rating;->NUM_RATERS:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 266
    return-object p0
.end method

.method public setRel(Ljava/lang/String;)Lcom/google/gdata/model/gd/Rating;
    .locals 1
    .param p1, "rel"    # Ljava/lang/String;

    .prologue
    .line 301
    sget-object v0, Lcom/google/gdata/model/gd/Rating;->REL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 302
    return-object p0
.end method

.method public setValue(Ljava/lang/Integer;)Lcom/google/gdata/model/gd/Rating;
    .locals 1
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 332
    sget-object v0, Lcom/google/gdata/model/gd/Rating;->VALUE:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 333
    return-object p0
.end method
