.class public Lcom/google/gdata/data/appsforyourdomain/provisioning/EmailListEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "EmailListEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/apps/2006#emailList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/appsforyourdomain/provisioning/EmailListEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMAIL_LIST_CATEGORY:Lcom/google/gdata/data/Category;

.field public static final EMAIL_LIST_KIND:Ljava/lang/String; = "http://schemas.google.com/apps/2006#emailList"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/apps/2006#emailList"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/provisioning/EmailListEntry;->EMAIL_LIST_CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 55
    invoke-virtual {p0}, Lcom/google/gdata/data/appsforyourdomain/provisioning/EmailListEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/provisioning/EmailListEntry;->EMAIL_LIST_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 64
    invoke-virtual {p0}, Lcom/google/gdata/data/appsforyourdomain/provisioning/EmailListEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/provisioning/EmailListEntry;->EMAIL_LIST_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extensionProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v2, 0x1

    .line 74
    invoke-static {}, Lcom/google/gdata/data/appsforyourdomain/EmailList;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 75
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, v2}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 76
    const-class v1, Lcom/google/gdata/data/appsforyourdomain/provisioning/EmailListEntry;

    invoke-virtual {p1, v1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 79
    invoke-static {}, Lcom/google/gdata/data/extensions/FeedLink;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v2}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 81
    const-class v1, Lcom/google/gdata/data/appsforyourdomain/provisioning/EmailListEntry;

    invoke-virtual {p1, v1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 84
    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/ExtensionProfile;->declareAdditionalNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 86
    return-void
.end method

.method public getEmailList()Lcom/google/gdata/data/appsforyourdomain/EmailList;
    .locals 1

    .prologue
    .line 89
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/EmailList;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/appsforyourdomain/provisioning/EmailListEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/EmailList;

    return-object v0
.end method
