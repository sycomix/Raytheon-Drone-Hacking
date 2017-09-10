.class public Lcom/google/gdata/model/gd/RecurrenceExceptionEntryLink;
.super Lcom/google/gdata/model/gd/EntryLink;
.source "RecurrenceExceptionEntryLink.java"


# static fields
.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Void;",
            "Lcom/google/gdata/model/gd/RecurrenceExceptionEntryLink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    sget-object v0, Lcom/google/gdata/model/gd/EntryLink;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v0}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const-class v2, Lcom/google/gdata/model/gd/RecurrenceExceptionEntryLink;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/RecurrenceExceptionEntryLink;->KEY:Lcom/google/gdata/model/ElementKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/google/gdata/model/gd/RecurrenceExceptionEntryLink;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/gd/EntryLink;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 62
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/gd/RecurrenceExceptionEntryLink;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/RecurrenceExceptionEntryLink;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/gd/EntryLink;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 70
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
            "Lcom/google/gdata/model/gd/RecurrenceExceptionEntryLink;",
            ">;",
            "Lcom/google/gdata/model/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/RecurrenceExceptionEntryLink;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/gd/EntryLink;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 85
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 2
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 43
    sget-object v1, Lcom/google/gdata/model/gd/RecurrenceExceptionEntryLink;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-static {p0}, Lcom/google/gdata/model/gd/EntryLink;->registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 51
    sget-object v1, Lcom/google/gdata/model/gd/RecurrenceExceptionEntryLink;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 54
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    sget-object v1, Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->replaceElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getEntry()Lcom/google/gdata/model/atom/Entry;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/RecurrenceExceptionEntryLink;->getEntry()Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;

    move-result-object v0

    return-object v0
.end method

.method public getEntry()Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/gd/EntryLink;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;

    return-object v0
.end method

.method public hasEntry()Z
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/gd/EntryLink;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic lock()Lcom/google/gdata/model/Element;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/RecurrenceExceptionEntryLink;->lock()Lcom/google/gdata/model/gd/RecurrenceExceptionEntryLink;

    move-result-object v0

    return-object v0
.end method

.method public lock()Lcom/google/gdata/model/gd/RecurrenceExceptionEntryLink;
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/google/gdata/model/gd/EntryLink;->lock()Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/RecurrenceExceptionEntryLink;

    return-object v0
.end method

.method public setEntry(Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;)Lcom/google/gdata/model/gd/RecurrenceExceptionEntryLink;
    .locals 1
    .param p1, "entry"    # Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;

    .prologue
    .line 109
    sget-object v0, Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/gd/EntryLink;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 110
    return-object p0
.end method
