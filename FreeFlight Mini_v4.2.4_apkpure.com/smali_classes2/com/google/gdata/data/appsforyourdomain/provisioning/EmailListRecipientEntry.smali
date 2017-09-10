.class public Lcom/google/gdata/data/appsforyourdomain/provisioning/EmailListRecipientEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "EmailListRecipientEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/apps/2006#emailList.recipient"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/appsforyourdomain/provisioning/EmailListRecipientEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMAILLIST_RECIPIENT_CATEGORY:Lcom/google/gdata/data/Category;

.field public static final EMAILLIST_RECIPIENT_KIND:Ljava/lang/String; = "http://schemas.google.com/apps/2006#emailList.recipient"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/apps/2006#emailList.recipient"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/provisioning/EmailListRecipientEntry;->EMAILLIST_RECIPIENT_CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 71
    invoke-virtual {p0}, Lcom/google/gdata/data/appsforyourdomain/provisioning/EmailListRecipientEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/provisioning/EmailListRecipientEntry;->EMAILLIST_RECIPIENT_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
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
    .line 79
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 80
    invoke-virtual {p0}, Lcom/google/gdata/data/appsforyourdomain/provisioning/EmailListRecipientEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/provisioning/EmailListRecipientEntry;->EMAILLIST_RECIPIENT_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extensionProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 90
    invoke-static {}, Lcom/google/gdata/data/extensions/Who;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 91
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 94
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 95
    const-class v1, Lcom/google/gdata/data/appsforyourdomain/provisioning/EmailListRecipientEntry;

    invoke-virtual {p1, v1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 98
    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/ExtensionProfile;->declareAdditionalNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 100
    return-void
.end method
