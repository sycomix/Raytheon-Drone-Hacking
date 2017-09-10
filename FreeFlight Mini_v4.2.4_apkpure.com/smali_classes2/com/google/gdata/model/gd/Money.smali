.class public Lcom/google/gdata/model/gd/Money;
.super Lcom/google/gdata/model/Element;
.source "Money.java"


# static fields
.field public static final AMOUNT:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final CURRENCY_CODE:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/String;",
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
            "Lcom/google/gdata/model/gd/Money;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 38
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "money"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Void;

    const-class v2, Lcom/google/gdata/model/gd/Money;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/Money;->KEY:Lcom/google/gdata/model/ElementKey;

    .line 44
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "amount"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Double;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/Money;->AMOUNT:Lcom/google/gdata/model/AttributeKey;

    .line 50
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "currencyCode"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/Money;->CURRENCY_CODE:Lcom/google/gdata/model/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/google/gdata/model/gd/Money;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 74
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/gd/Money;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/Money;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 81
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
            "Lcom/google/gdata/model/gd/Money;",
            ">;",
            "Lcom/google/gdata/model/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/Money;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 95
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 3
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    const/4 v2, 0x1

    .line 57
    sget-object v1, Lcom/google/gdata/model/gd/Money;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 62
    :cond_0
    sget-object v1, Lcom/google/gdata/model/gd/Money;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 65
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    sget-object v1, Lcom/google/gdata/model/gd/Money;->AMOUNT:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/google/gdata/model/AttributeCreator;->setRequired(Z)Lcom/google/gdata/model/AttributeCreator;

    .line 66
    sget-object v1, Lcom/google/gdata/model/gd/Money;->CURRENCY_CODE:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/google/gdata/model/AttributeCreator;->setRequired(Z)Lcom/google/gdata/model/AttributeCreator;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    if-ne p0, p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v1

    .line 165
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/gd/Money;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 166
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 168
    check-cast v0, Lcom/google/gdata/model/gd/Money;

    .line 169
    .local v0, "other":Lcom/google/gdata/model/gd/Money;
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Money;->getAmount()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/Money;->getAmount()Ljava/lang/Double;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/gd/Money;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Money;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/Money;->getCurrencyCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/gd/Money;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getAmount()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/google/gdata/model/gd/Money;->AMOUNT:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/google/gdata/model/gd/Money;->CURRENCY_CODE:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasAmount()Z
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/google/gdata/model/gd/Money;->AMOUNT:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasCurrencyCode()Z
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/google/gdata/model/gd/Money;->CURRENCY_CODE:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 176
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Money;->getAmount()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 177
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Money;->getAmount()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Money;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 180
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Money;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 182
    :cond_1
    return v0
.end method

.method public bridge synthetic lock()Lcom/google/gdata/model/Element;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Money;->lock()Lcom/google/gdata/model/gd/Money;

    move-result-object v0

    return-object v0
.end method

.method public lock()Lcom/google/gdata/model/gd/Money;
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Lcom/google/gdata/model/Element;->lock()Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/Money;

    return-object v0
.end method

.method public setAmount(Ljava/lang/Double;)Lcom/google/gdata/model/gd/Money;
    .locals 1
    .param p1, "amount"    # Ljava/lang/Double;

    .prologue
    .line 118
    sget-object v0, Lcom/google/gdata/model/gd/Money;->AMOUNT:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 119
    return-object p0
.end method

.method public setCurrencyCode(Ljava/lang/String;)Lcom/google/gdata/model/gd/Money;
    .locals 1
    .param p1, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 147
    sget-object v0, Lcom/google/gdata/model/gd/Money;->CURRENCY_CODE:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 148
    return-object p0
.end method
