.class public Lcom/google/gdata/data/extensions/EventEntry;
.super Lcom/google/gdata/data/extensions/BaseEventEntry;
.source "EventEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/g/2005#event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/extensions/BaseEventEntry",
        "<",
        "Lcom/google/gdata/data/extensions/EventEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_CATEGORY:Lcom/google/gdata/data/Category;

.field public static final EVENT_KIND:Ljava/lang/String; = "http://schemas.google.com/g/2005#event"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/g/2005#event"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/extensions/EventEntry;->EVENT_CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/gdata/data/extensions/BaseEventEntry;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/extensions/BaseEventEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 59
    return-void
.end method


# virtual methods
.method public addParticipant(Lcom/google/gdata/data/extensions/Who;)V
    .locals 1
    .param p1, "participant"    # Lcom/google/gdata/data/extensions/Who;

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/EventEntry;->getParticipants()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/google/gdata/data/extensions/BaseEventEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 68
    const-class v0, Lcom/google/gdata/data/extensions/EventEntry;

    invoke-static {}, Lcom/google/gdata/data/extensions/Who;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 69
    return-void
.end method

.method public getParticipants()Ljava/util/List;
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
    .line 75
    const-class v0, Lcom/google/gdata/data/extensions/Who;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/EventEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
