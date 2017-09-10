.class public Lcom/google/gdata/data/appsforyourdomain/migration/MailItemEntry;
.super Lcom/google/gdata/data/media/MediaEntry;
.source "MailItemEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/apps/2006#mailItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/media/MediaEntry",
        "<",
        "Lcom/google/gdata/data/appsforyourdomain/migration/MailItemEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAILITEM_CATEGORY:Lcom/google/gdata/data/Category;

.field public static final MAILITEM_KIND:Ljava/lang/String; = "http://schemas.google.com/apps/2006#mailItem"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/apps/2006#mailItem"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemEntry;->MAILITEM_CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/gdata/data/media/MediaEntry;-><init>()V

    .line 57
    invoke-virtual {p0}, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemEntry;->MAILITEM_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<",
            "Lcom/google/gdata/data/appsforyourdomain/migration/MailItemEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<Lcom/google/gdata/data/appsforyourdomain/migration/MailItemEntry;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/media/MediaEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 68
    invoke-virtual {p0}, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemEntry;->MAILITEM_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method


# virtual methods
.method public addLabel(Lcom/google/gdata/data/appsforyourdomain/migration/Label;)V
    .locals 0
    .param p1, "label"    # Lcom/google/gdata/data/appsforyourdomain/migration/Label;

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemEntry;->addRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 130
    return-void
.end method

.method public addMailProperty(Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;)V
    .locals 0
    .param p1, "mailProperty"    # Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemEntry;->addRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 113
    return-void
.end method

.method public addRecipient(Lcom/google/gdata/data/extensions/Email;)V
    .locals 0
    .param p1, "recipient"    # Lcom/google/gdata/data/extensions/Email;

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemEntry;->addRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 149
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/MediaEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 79
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemEntry;

    invoke-static {}, Lcom/google/gdata/data/extensions/Email;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 80
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemEntry;

    invoke-static {}, Lcom/google/gdata/data/appsforyourdomain/migration/Label;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 81
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemEntry;

    invoke-static {}, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 83
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemEntry;

    invoke-static {}, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 84
    return-void
.end method

.method public getLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/appsforyourdomain/migration/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/migration/Label;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMailProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRecipients()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/extensions/Email;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    const-class v0, Lcom/google/gdata/data/extensions/Email;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRfc822Msg()Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;
    .locals 1

    .prologue
    .line 90
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;

    return-object v0
.end method

.method public setRfc822Msg(Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;)V
    .locals 0
    .param p1, "rfc822Msg"    # Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 98
    return-void
.end method
