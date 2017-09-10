.class public Lcom/google/gdata/data/acl/AclEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "AclEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/acl/2007#accessRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/acl/AclEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACCESS_RULE_CATEGORY:Lcom/google/gdata/data/Category;

.field public static final ACCESS_RULE_KIND:Ljava/lang/String; = "http://schemas.google.com/acl/2007#accessRule"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/acl/2007#accessRule"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/acl/AclEntry;->ACCESS_RULE_CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 53
    invoke-virtual {p0}, Lcom/google/gdata/data/acl/AclEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/acl/AclEntry;->ACCESS_RULE_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method


# virtual methods
.method public addAdditionalRole(Lcom/google/gdata/data/acl/AdditionalRole;)V
    .locals 0
    .param p1, "role"    # Lcom/google/gdata/data/acl/AdditionalRole;

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/acl/AclEntry;->addRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 95
    return-void
.end method

.method public clearAdditionalRoles()V
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/gdata/data/acl/AclEntry;->getAdditionalRoles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 58
    const-class v0, Lcom/google/gdata/data/acl/AclEntry;

    const-class v1, Lcom/google/gdata/data/acl/AclScope;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 59
    const-class v0, Lcom/google/gdata/data/acl/AclEntry;

    const-class v1, Lcom/google/gdata/data/acl/AclRole;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 60
    const-class v0, Lcom/google/gdata/data/acl/AclEntry;

    const-class v1, Lcom/google/gdata/data/acl/AclWithKey;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 61
    new-instance v0, Lcom/google/gdata/data/acl/AclWithKey;

    invoke-direct {v0}, Lcom/google/gdata/data/acl/AclWithKey;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/acl/AclWithKey;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 62
    const-class v0, Lcom/google/gdata/data/acl/AclEntry;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/gdata/data/acl/AdditionalRole;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 63
    return-void
.end method

.method public getAdditionalRoles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/acl/AdditionalRole;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    const-class v0, Lcom/google/gdata/data/acl/AdditionalRole;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/acl/AclEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRole()Lcom/google/gdata/data/acl/AclRole;
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/google/gdata/data/acl/AclRole;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/acl/AclEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/acl/AclRole;

    return-object v0
.end method

.method public getScope()Lcom/google/gdata/data/acl/AclScope;
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/google/gdata/data/acl/AclScope;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/acl/AclEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/acl/AclScope;

    return-object v0
.end method

.method public getWithKey()Lcom/google/gdata/data/acl/AclWithKey;
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/google/gdata/data/acl/AclWithKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/acl/AclEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/acl/AclWithKey;

    return-object v0
.end method

.method public setRole(Lcom/google/gdata/data/acl/AclRole;)V
    .locals 0
    .param p1, "role"    # Lcom/google/gdata/data/acl/AclRole;

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/acl/AclEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 79
    return-void
.end method

.method public setScope(Lcom/google/gdata/data/acl/AclScope;)V
    .locals 0
    .param p1, "scope"    # Lcom/google/gdata/data/acl/AclScope;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/acl/AclEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 71
    return-void
.end method

.method public setWithKey(Lcom/google/gdata/data/acl/AclWithKey;)V
    .locals 0
    .param p1, "withKey"    # Lcom/google/gdata/data/acl/AclWithKey;

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/acl/AclEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 87
    return-void
.end method
