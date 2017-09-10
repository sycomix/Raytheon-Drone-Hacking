.class public Lcom/google/gdata/data/extensions/MessageEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "MessageEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/g/2005#message"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/extensions/MessageEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CHAT_CATEGORY:Lcom/google/gdata/data/Category;

.field public static final INBOX_CATEGORY:Lcom/google/gdata/data/Category;

.field public static final MESSAGE_CATEGORY:Lcom/google/gdata/data/Category;

.field public static final MESSAGE_KIND:Ljava/lang/String; = "http://schemas.google.com/g/2005#message"

.field public static final SENT_CATEGORY:Lcom/google/gdata/data/Category;

.field public static final SPAM_CATEGORY:Lcom/google/gdata/data/Category;

.field public static final STARRED_CATEGORY:Lcom/google/gdata/data/Category;

.field public static final UNREAD_CATEGORY:Lcom/google/gdata/data/Category;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/g/2005#message"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/extensions/MessageEntry;->MESSAGE_CATEGORY:Lcom/google/gdata/data/Category;

    .line 46
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "http://schemas.google.com/g/2005#message.starred"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/extensions/MessageEntry;->STARRED_CATEGORY:Lcom/google/gdata/data/Category;

    .line 49
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "http://schemas.google.com/g/2005#message.unread"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/extensions/MessageEntry;->UNREAD_CATEGORY:Lcom/google/gdata/data/Category;

    .line 52
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "http://schemas.google.com/g/2005#message.chat"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/extensions/MessageEntry;->CHAT_CATEGORY:Lcom/google/gdata/data/Category;

    .line 55
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "http://schemas.google.com/g/2005#message.spam"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/extensions/MessageEntry;->SPAM_CATEGORY:Lcom/google/gdata/data/Category;

    .line 58
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "http://schemas.google.com/g/2005#message.sent"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/extensions/MessageEntry;->SENT_CATEGORY:Lcom/google/gdata/data/Category;

    .line 61
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "http://schemas.google.com/g/2005#message.inbox"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/extensions/MessageEntry;->INBOX_CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 70
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/MessageEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/extensions/MessageEntry;->MESSAGE_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
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
    .line 78
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 79
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/MessageEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/extensions/MessageEntry;->MESSAGE_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v2, 0x0

    .line 88
    const-class v0, Lcom/google/gdata/data/extensions/MessageEntry;

    invoke-static {v2}, Lcom/google/gdata/data/extensions/Rating;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 89
    const-class v0, Lcom/google/gdata/data/extensions/MessageEntry;

    invoke-static {v2}, Lcom/google/gdata/data/extensions/When;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 90
    const-class v0, Lcom/google/gdata/data/extensions/MessageEntry;

    invoke-static {v2}, Lcom/google/gdata/data/extensions/GeoPt;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 91
    const-class v0, Lcom/google/gdata/data/extensions/MessageEntry;

    invoke-static {}, Lcom/google/gdata/data/extensions/Who;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 92
    return-void
.end method

.method public getGeoPt()Lcom/google/gdata/data/extensions/GeoPt;
    .locals 1

    .prologue
    .line 111
    const-class v0, Lcom/google/gdata/data/extensions/GeoPt;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/MessageEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/GeoPt;

    return-object v0
.end method

.method public getRating()Lcom/google/gdata/data/extensions/Rating;
    .locals 1

    .prologue
    .line 95
    const-class v0, Lcom/google/gdata/data/extensions/Rating;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/MessageEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Rating;

    return-object v0
.end method

.method public getTime()Lcom/google/gdata/data/extensions/When;
    .locals 1

    .prologue
    .line 103
    const-class v0, Lcom/google/gdata/data/extensions/When;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/MessageEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/When;

    return-object v0
.end method

.method public getWhoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/extensions/Who;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    const-class v0, Lcom/google/gdata/data/extensions/Who;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/MessageEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setGeoPt(Lcom/google/gdata/data/extensions/GeoPt;)V
    .locals 0
    .param p1, "geoPt"    # Lcom/google/gdata/data/extensions/GeoPt;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/MessageEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 116
    return-void
.end method

.method public setRating(Lcom/google/gdata/data/extensions/Rating;)V
    .locals 0
    .param p1, "rating"    # Lcom/google/gdata/data/extensions/Rating;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/MessageEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 100
    return-void
.end method

.method public setTime(Lcom/google/gdata/data/extensions/When;)V
    .locals 0
    .param p1, "when"    # Lcom/google/gdata/data/extensions/When;

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/MessageEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 108
    return-void
.end method
