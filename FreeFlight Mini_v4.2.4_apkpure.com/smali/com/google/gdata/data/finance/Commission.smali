.class public Lcom/google/gdata/data/finance/Commission;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Commission.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "commission"
    nsAlias = "gf"
    nsUri = "http://schemas.google.com/finance/2007"
.end annotation


# static fields
.field static final XML_NAME:Ljava/lang/String; = "commission"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 45
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 97
    const-class v1, Lcom/google/gdata/data/finance/Commission;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 99
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 100
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 101
    return-object v0
.end method


# virtual methods
.method public addMoney(Lcom/google/gdata/data/extensions/Money;)V
    .locals 1
    .param p1, "money"    # Lcom/google/gdata/data/extensions/Money;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/Commission;->getMoney()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v1, 0x1

    .line 49
    const-class v0, Lcom/google/gdata/data/finance/Commission;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    const-class v0, Lcom/google/gdata/data/finance/Commission;

    invoke-static {v1, v1}, Lcom/google/gdata/data/extensions/Money;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    goto :goto_0
.end method

.method public getMoney()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/extensions/Money;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    const-class v0, Lcom/google/gdata/data/extensions/Money;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/Commission;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasMoney()Z
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/google/gdata/data/extensions/Money;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/Commission;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-string/jumbo v0, "{Commission}"

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method
