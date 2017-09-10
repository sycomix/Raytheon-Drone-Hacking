.class public Lcom/google/gdata/data/appsforyourdomain/provisioning/UserEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "UserEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/apps/2006#user"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/appsforyourdomain/provisioning/UserEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final USER_CATEGORY:Lcom/google/gdata/data/Category;

.field public static final USER_KIND:Ljava/lang/String; = "http://schemas.google.com/apps/2006#user"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/apps/2006#user"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/provisioning/UserEntry;->USER_CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 57
    invoke-virtual {p0}, Lcom/google/gdata/data/appsforyourdomain/provisioning/UserEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/provisioning/UserEntry;->USER_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 2
    .param p1, "sourceEntry"    # Lcom/google/gdata/data/BaseEntry;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 66
    invoke-virtual {p0}, Lcom/google/gdata/data/appsforyourdomain/provisioning/UserEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/provisioning/UserEntry;->USER_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extensionProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 76
    const-class v1, Lcom/google/gdata/data/appsforyourdomain/provisioning/UserEntry;

    invoke-static {}, Lcom/google/gdata/data/appsforyourdomain/Login;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 77
    const-class v1, Lcom/google/gdata/data/appsforyourdomain/provisioning/UserEntry;

    invoke-static {}, Lcom/google/gdata/data/appsforyourdomain/Email;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 78
    const-class v1, Lcom/google/gdata/data/appsforyourdomain/provisioning/UserEntry;

    invoke-static {}, Lcom/google/gdata/data/appsforyourdomain/Name;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 79
    const-class v1, Lcom/google/gdata/data/appsforyourdomain/provisioning/UserEntry;

    invoke-static {}, Lcom/google/gdata/data/appsforyourdomain/Quota;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 82
    invoke-static {}, Lcom/google/gdata/data/extensions/FeedLink;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 83
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 84
    const-class v1, Lcom/google/gdata/data/appsforyourdomain/provisioning/UserEntry;

    invoke-virtual {p1, v1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 87
    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/ExtensionProfile;->declareAdditionalNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 89
    return-void
.end method

.method public getEmail()Lcom/google/gdata/data/appsforyourdomain/Email;
    .locals 1

    .prologue
    .line 104
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/Email;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/appsforyourdomain/provisioning/UserEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/Email;

    return-object v0
.end method

.method public getLogin()Lcom/google/gdata/data/appsforyourdomain/Login;
    .locals 1

    .prologue
    .line 92
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/Login;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/appsforyourdomain/provisioning/UserEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/Login;

    return-object v0
.end method

.method public getName()Lcom/google/gdata/data/appsforyourdomain/Name;
    .locals 1

    .prologue
    .line 96
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/Name;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/appsforyourdomain/provisioning/UserEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/Name;

    return-object v0
.end method

.method public getQuota()Lcom/google/gdata/data/appsforyourdomain/Quota;
    .locals 1

    .prologue
    .line 100
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/Quota;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/appsforyourdomain/provisioning/UserEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/Quota;

    return-object v0
.end method
