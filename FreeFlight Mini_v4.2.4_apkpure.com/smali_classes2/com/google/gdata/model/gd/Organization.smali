.class public Lcom/google/gdata/model/gd/Organization;
.super Lcom/google/gdata/model/Element;
.source "Organization.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/model/gd/Organization$Rel;
    }
.end annotation


# static fields
.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Void;",
            "Lcom/google/gdata/model/gd/Organization;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "organization"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Void;

    const-class v2, Lcom/google/gdata/model/gd/Organization;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/Organization;->KEY:Lcom/google/gdata/model/ElementKey;

    .line 66
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "label"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/Organization;->LABEL:Lcom/google/gdata/model/AttributeKey;

    .line 72
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "primary"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/Organization;->PRIMARY:Lcom/google/gdata/model/AttributeKey;

    .line 78
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "rel"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/Organization;->REL:Lcom/google/gdata/model/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/google/gdata/model/gd/Organization;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 109
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/gd/Organization;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/Organization;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 116
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
            "Lcom/google/gdata/model/gd/Organization;",
            ">;",
            "Lcom/google/gdata/model/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/Organization;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 131
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 2
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 85
    sget-object v1, Lcom/google/gdata/model/gd/Organization;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 90
    :cond_0
    sget-object v1, Lcom/google/gdata/model/gd/Organization;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 93
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    sget-object v1, Lcom/google/gdata/model/gd/Organization;->LABEL:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 94
    sget-object v1, Lcom/google/gdata/model/gd/Organization;->PRIMARY:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 95
    sget-object v1, Lcom/google/gdata/model/gd/Organization;->REL:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 96
    sget-object v1, Lcom/google/gdata/model/gd/OrgDepartment;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 97
    sget-object v1, Lcom/google/gdata/model/gd/OrgJobDescription;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 98
    sget-object v1, Lcom/google/gdata/model/gd/OrgName;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 99
    sget-object v1, Lcom/google/gdata/model/gd/OrgSymbol;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 100
    sget-object v1, Lcom/google/gdata/model/gd/OrgTitle;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 101
    sget-object v1, Lcom/google/gdata/model/gd/Where;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    goto :goto_0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/google/gdata/model/gd/Organization;->LABEL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOrgDepartment()Lcom/google/gdata/model/gd/OrgDepartment;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/google/gdata/model/gd/OrgDepartment;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/OrgDepartment;

    return-object v0
.end method

.method public getOrgJobDescription()Lcom/google/gdata/model/gd/OrgJobDescription;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/google/gdata/model/gd/OrgJobDescription;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/OrgJobDescription;

    return-object v0
.end method

.method public getOrgName()Lcom/google/gdata/model/gd/OrgName;
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcom/google/gdata/model/gd/OrgName;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/OrgName;

    return-object v0
.end method

.method public getOrgSymbol()Lcom/google/gdata/model/gd/OrgSymbol;
    .locals 1

    .prologue
    .line 262
    sget-object v0, Lcom/google/gdata/model/gd/OrgSymbol;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/OrgSymbol;

    return-object v0
.end method

.method public getOrgTitle()Lcom/google/gdata/model/gd/OrgTitle;
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/google/gdata/model/gd/OrgTitle;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/OrgTitle;

    return-object v0
.end method

.method public getPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 320
    sget-object v0, Lcom/google/gdata/model/gd/Organization;->PRIMARY:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    sget-object v0, Lcom/google/gdata/model/gd/Organization;->REL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getWhere()Lcom/google/gdata/model/gd/Where;
    .locals 1

    .prologue
    .line 379
    sget-object v0, Lcom/google/gdata/model/gd/Where;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/Where;

    return-object v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/google/gdata/model/gd/Organization;->LABEL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasOrgDepartment()Z
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/google/gdata/model/gd/OrgDepartment;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasOrgJobDescription()Z
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/google/gdata/model/gd/OrgJobDescription;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasOrgName()Z
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/google/gdata/model/gd/OrgName;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasOrgSymbol()Z
    .locals 1

    .prologue
    .line 282
    sget-object v0, Lcom/google/gdata/model/gd/OrgSymbol;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasOrgTitle()Z
    .locals 1

    .prologue
    .line 311
    sget-object v0, Lcom/google/gdata/model/gd/OrgTitle;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasPrimary()Z
    .locals 1

    .prologue
    .line 341
    sget-object v0, Lcom/google/gdata/model/gd/Organization;->PRIMARY:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasRel()Z
    .locals 1

    .prologue
    .line 370
    sget-object v0, Lcom/google/gdata/model/gd/Organization;->REL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasWhere()Z
    .locals 1

    .prologue
    .line 399
    sget-object v0, Lcom/google/gdata/model/gd/Where;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic lock()Lcom/google/gdata/model/Element;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Organization;->lock()Lcom/google/gdata/model/gd/Organization;

    move-result-object v0

    return-object v0
.end method

.method public lock()Lcom/google/gdata/model/gd/Organization;
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/google/gdata/model/Element;->lock()Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/Organization;

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/gdata/model/gd/Organization;
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 154
    sget-object v0, Lcom/google/gdata/model/gd/Organization;->LABEL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 155
    return-object p0
.end method

.method public setOrgDepartment(Lcom/google/gdata/model/gd/OrgDepartment;)Lcom/google/gdata/model/gd/Organization;
    .locals 1
    .param p1, "orgDepartment"    # Lcom/google/gdata/model/gd/OrgDepartment;

    .prologue
    .line 184
    sget-object v0, Lcom/google/gdata/model/gd/OrgDepartment;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 185
    return-object p0
.end method

.method public setOrgJobDescription(Lcom/google/gdata/model/gd/OrgJobDescription;)Lcom/google/gdata/model/gd/Organization;
    .locals 1
    .param p1, "orgJobDescription"    # Lcom/google/gdata/model/gd/OrgJobDescription;

    .prologue
    .line 214
    sget-object v0, Lcom/google/gdata/model/gd/OrgJobDescription;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 215
    return-object p0
.end method

.method public setOrgName(Lcom/google/gdata/model/gd/OrgName;)Lcom/google/gdata/model/gd/Organization;
    .locals 1
    .param p1, "orgName"    # Lcom/google/gdata/model/gd/OrgName;

    .prologue
    .line 243
    sget-object v0, Lcom/google/gdata/model/gd/OrgName;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 244
    return-object p0
.end method

.method public setOrgSymbol(Lcom/google/gdata/model/gd/OrgSymbol;)Lcom/google/gdata/model/gd/Organization;
    .locals 1
    .param p1, "orgSymbol"    # Lcom/google/gdata/model/gd/OrgSymbol;

    .prologue
    .line 272
    sget-object v0, Lcom/google/gdata/model/gd/OrgSymbol;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 273
    return-object p0
.end method

.method public setOrgTitle(Lcom/google/gdata/model/gd/OrgTitle;)Lcom/google/gdata/model/gd/Organization;
    .locals 1
    .param p1, "orgTitle"    # Lcom/google/gdata/model/gd/OrgTitle;

    .prologue
    .line 301
    sget-object v0, Lcom/google/gdata/model/gd/OrgTitle;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 302
    return-object p0
.end method

.method public setPrimary(Ljava/lang/Boolean;)Lcom/google/gdata/model/gd/Organization;
    .locals 1
    .param p1, "primary"    # Ljava/lang/Boolean;

    .prologue
    .line 331
    sget-object v0, Lcom/google/gdata/model/gd/Organization;->PRIMARY:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 332
    return-object p0
.end method

.method public setRel(Ljava/lang/String;)Lcom/google/gdata/model/gd/Organization;
    .locals 1
    .param p1, "rel"    # Ljava/lang/String;

    .prologue
    .line 360
    sget-object v0, Lcom/google/gdata/model/gd/Organization;->REL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 361
    return-object p0
.end method

.method public setWhere(Lcom/google/gdata/model/gd/Where;)Lcom/google/gdata/model/gd/Organization;
    .locals 1
    .param p1, "where"    # Lcom/google/gdata/model/gd/Where;

    .prologue
    .line 389
    sget-object v0, Lcom/google/gdata/model/gd/Where;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 390
    return-object p0
.end method
