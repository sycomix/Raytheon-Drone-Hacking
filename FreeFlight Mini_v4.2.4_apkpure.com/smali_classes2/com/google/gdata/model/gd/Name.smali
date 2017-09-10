.class public Lcom/google/gdata/model/gd/Name;
.super Lcom/google/gdata/model/Element;
.source "Name.java"


# static fields
.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Void;",
            "Lcom/google/gdata/model/gd/Name;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "name"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Void;

    const-class v2, Lcom/google/gdata/model/gd/Name;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/Name;->KEY:Lcom/google/gdata/model/ElementKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/google/gdata/model/gd/Name;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 65
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/gd/Name;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/Name;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 72
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
            "Lcom/google/gdata/model/gd/Name;",
            ">;",
            "Lcom/google/gdata/model/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/Name;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 86
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 2
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 44
    sget-object v1, Lcom/google/gdata/model/gd/Name;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 49
    :cond_0
    sget-object v1, Lcom/google/gdata/model/gd/Name;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 52
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    sget-object v1, Lcom/google/gdata/model/gd/AdditionalName;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 53
    sget-object v1, Lcom/google/gdata/model/gd/FamilyName;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 54
    sget-object v1, Lcom/google/gdata/model/gd/FullName;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 55
    sget-object v1, Lcom/google/gdata/model/gd/GivenName;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 56
    sget-object v1, Lcom/google/gdata/model/gd/NamePrefix;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 57
    sget-object v1, Lcom/google/gdata/model/gd/NameSuffix;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    goto :goto_0
.end method


# virtual methods
.method public getAdditionalName()Lcom/google/gdata/model/gd/AdditionalName;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/google/gdata/model/gd/AdditionalName;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/AdditionalName;

    return-object v0
.end method

.method public getFamilyName()Lcom/google/gdata/model/gd/FamilyName;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/google/gdata/model/gd/FamilyName;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/FamilyName;

    return-object v0
.end method

.method public getFullName()Lcom/google/gdata/model/gd/FullName;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/google/gdata/model/gd/FullName;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/FullName;

    return-object v0
.end method

.method public getGivenName()Lcom/google/gdata/model/gd/GivenName;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/google/gdata/model/gd/GivenName;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/GivenName;

    return-object v0
.end method

.method public getNamePrefix()Lcom/google/gdata/model/gd/NamePrefix;
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/google/gdata/model/gd/NamePrefix;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/NamePrefix;

    return-object v0
.end method

.method public getNameSuffix()Lcom/google/gdata/model/gd/NameSuffix;
    .locals 1

    .prologue
    .line 244
    sget-object v0, Lcom/google/gdata/model/gd/NameSuffix;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/NameSuffix;

    return-object v0
.end method

.method public hasAdditionalName()Z
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/google/gdata/model/gd/AdditionalName;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasFamilyName()Z
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/google/gdata/model/gd/FamilyName;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasFullName()Z
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/google/gdata/model/gd/FullName;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasGivenName()Z
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/google/gdata/model/gd/GivenName;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasNamePrefix()Z
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/google/gdata/model/gd/NamePrefix;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasNameSuffix()Z
    .locals 1

    .prologue
    .line 264
    sget-object v0, Lcom/google/gdata/model/gd/NameSuffix;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic lock()Lcom/google/gdata/model/Element;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Name;->lock()Lcom/google/gdata/model/gd/Name;

    move-result-object v0

    return-object v0
.end method

.method public lock()Lcom/google/gdata/model/gd/Name;
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/google/gdata/model/Element;->lock()Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/Name;

    return-object v0
.end method

.method public setAdditionalName(Lcom/google/gdata/model/gd/AdditionalName;)Lcom/google/gdata/model/gd/Name;
    .locals 1
    .param p1, "additionalName"    # Lcom/google/gdata/model/gd/AdditionalName;

    .prologue
    .line 109
    sget-object v0, Lcom/google/gdata/model/gd/AdditionalName;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 110
    return-object p0
.end method

.method public setFamilyName(Lcom/google/gdata/model/gd/FamilyName;)Lcom/google/gdata/model/gd/Name;
    .locals 1
    .param p1, "familyName"    # Lcom/google/gdata/model/gd/FamilyName;

    .prologue
    .line 138
    sget-object v0, Lcom/google/gdata/model/gd/FamilyName;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 139
    return-object p0
.end method

.method public setFullName(Lcom/google/gdata/model/gd/FullName;)Lcom/google/gdata/model/gd/Name;
    .locals 1
    .param p1, "fullName"    # Lcom/google/gdata/model/gd/FullName;

    .prologue
    .line 167
    sget-object v0, Lcom/google/gdata/model/gd/FullName;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 168
    return-object p0
.end method

.method public setGivenName(Lcom/google/gdata/model/gd/GivenName;)Lcom/google/gdata/model/gd/Name;
    .locals 1
    .param p1, "givenName"    # Lcom/google/gdata/model/gd/GivenName;

    .prologue
    .line 196
    sget-object v0, Lcom/google/gdata/model/gd/GivenName;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 197
    return-object p0
.end method

.method public setNamePrefix(Lcom/google/gdata/model/gd/NamePrefix;)Lcom/google/gdata/model/gd/Name;
    .locals 1
    .param p1, "namePrefix"    # Lcom/google/gdata/model/gd/NamePrefix;

    .prologue
    .line 225
    sget-object v0, Lcom/google/gdata/model/gd/NamePrefix;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 226
    return-object p0
.end method

.method public setNameSuffix(Lcom/google/gdata/model/gd/NameSuffix;)Lcom/google/gdata/model/gd/Name;
    .locals 1
    .param p1, "nameSuffix"    # Lcom/google/gdata/model/gd/NameSuffix;

    .prologue
    .line 254
    sget-object v0, Lcom/google/gdata/model/gd/NameSuffix;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 255
    return-object p0
.end method
