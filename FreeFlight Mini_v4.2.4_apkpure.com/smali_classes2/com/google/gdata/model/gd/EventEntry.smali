.class public Lcom/google/gdata/model/gd/EventEntry;
.super Lcom/google/gdata/model/atom/Entry;
.source "EventEntry.java"


# static fields
.field public static final CATEGORY:Lcom/google/gdata/model/atom/Category;

.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Void;",
            "Lcom/google/gdata/model/gd/EventEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/g/2005#event"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lcom/google/gdata/model/atom/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/g/2005#event"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/atom/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gdata/model/atom/Category;->lock()Lcom/google/gdata/model/atom/Category;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/EventEntry;->CATEGORY:Lcom/google/gdata/model/atom/Category;

    .line 53
    sget-object v0, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v0}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const-class v2, Lcom/google/gdata/model/gd/EventEntry;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/EventEntry;->KEY:Lcom/google/gdata/model/ElementKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/google/gdata/model/gd/EventEntry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/atom/Entry;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 97
    sget-object v0, Lcom/google/gdata/model/gd/EventEntry;->CATEGORY:Lcom/google/gdata/model/atom/Category;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/gd/EventEntry;->addCategory(Lcom/google/gdata/model/atom/Category;)V

    .line 98
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/gd/EventEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/EventEntry;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/atom/Entry;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 115
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/atom/Entry;)V
    .locals 0
    .param p2, "source"    # Lcom/google/gdata/model/atom/Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/gd/EventEntry;",
            ">;",
            "Lcom/google/gdata/model/atom/Entry;",
            ")V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/EventEntry;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/atom/Entry;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/atom/Entry;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/model/atom/Entry;)V
    .locals 1
    .param p1, "sourceEntry"    # Lcom/google/gdata/model/atom/Entry;

    .prologue
    .line 107
    sget-object v0, Lcom/google/gdata/model/gd/EventEntry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/atom/Entry;)V

    .line 108
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 4
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 60
    sget-object v1, Lcom/google/gdata/model/gd/EventEntry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-static {p0}, Lcom/google/gdata/model/atom/Entry;->registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 68
    sget-object v1, Lcom/google/gdata/model/gd/EventEntry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 71
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    sget-object v1, Lcom/google/gdata/model/gd/Comments;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 72
    sget-object v1, Lcom/google/gdata/model/gd/EventStatus;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 73
    sget-object v1, Lcom/google/gdata/model/gd/Where;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/model/ElementMetadata$Cardinality;->MULTIPLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setCardinality(Lcom/google/gdata/model/ElementMetadata$Cardinality;)Lcom/google/gdata/model/ElementCreator;

    .line 75
    sget-object v1, Lcom/google/gdata/model/gd/OriginalEvent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 76
    sget-object v1, Lcom/google/gdata/model/gd/Who;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/model/ElementMetadata$Cardinality;->MULTIPLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setCardinality(Lcom/google/gdata/model/ElementMetadata$Cardinality;)Lcom/google/gdata/model/ElementCreator;

    .line 78
    sget-object v1, Lcom/google/gdata/model/gd/Recurrence;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 79
    sget-object v1, Lcom/google/gdata/model/gd/RecurrenceException;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/model/ElementMetadata$Cardinality;->MULTIPLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setCardinality(Lcom/google/gdata/model/ElementMetadata$Cardinality;)Lcom/google/gdata/model/ElementCreator;

    .line 81
    sget-object v1, Lcom/google/gdata/model/gd/Reminder;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/model/ElementMetadata$Cardinality;->MULTIPLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setCardinality(Lcom/google/gdata/model/ElementMetadata$Cardinality;)Lcom/google/gdata/model/ElementCreator;

    .line 83
    sget-object v1, Lcom/google/gdata/model/gd/When;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/model/ElementMetadata$Cardinality;->MULTIPLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setCardinality(Lcom/google/gdata/model/ElementMetadata$Cardinality;)Lcom/google/gdata/model/ElementCreator;

    .line 85
    sget-object v1, Lcom/google/gdata/model/gd/Transparency;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 86
    sget-object v1, Lcom/google/gdata/model/gd/Visibility;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 89
    sget-object v1, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    const-string v2, "http://schemas.google.com/g/2005#event"

    sget-object v3, Lcom/google/gdata/model/gd/EventEntry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/gdata/model/MetadataRegistry;->adapt(Lcom/google/gdata/model/ElementKey;Ljava/lang/String;Lcom/google/gdata/model/ElementKey;)V

    goto :goto_0
.end method


# virtual methods
.method public addLocation(Lcom/google/gdata/model/gd/Where;)Lcom/google/gdata/model/gd/EventEntry;
    .locals 1
    .param p1, "location"    # Lcom/google/gdata/model/gd/Where;

    .prologue
    .line 209
    sget-object v0, Lcom/google/gdata/model/gd/Where;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 210
    return-object p0
.end method

.method public addParticipant(Lcom/google/gdata/model/gd/Who;)Lcom/google/gdata/model/gd/EventEntry;
    .locals 1
    .param p1, "participant"    # Lcom/google/gdata/model/gd/Who;

    .prologue
    .line 283
    sget-object v0, Lcom/google/gdata/model/gd/Who;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 284
    return-object p0
.end method

.method public addRecurrenceException(Lcom/google/gdata/model/gd/RecurrenceException;)Lcom/google/gdata/model/gd/EventEntry;
    .locals 1
    .param p1, "recurrenceException"    # Lcom/google/gdata/model/gd/RecurrenceException;

    .prologue
    .line 358
    sget-object v0, Lcom/google/gdata/model/gd/RecurrenceException;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 359
    return-object p0
.end method

.method public addReminder(Lcom/google/gdata/model/gd/Reminder;)Lcom/google/gdata/model/gd/EventEntry;
    .locals 1
    .param p1, "reminder"    # Lcom/google/gdata/model/gd/Reminder;

    .prologue
    .line 404
    sget-object v0, Lcom/google/gdata/model/gd/Reminder;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 405
    return-object p0
.end method

.method public addTime(Lcom/google/gdata/model/gd/When;)Lcom/google/gdata/model/gd/EventEntry;
    .locals 1
    .param p1, "time"    # Lcom/google/gdata/model/gd/When;

    .prologue
    .line 449
    sget-object v0, Lcom/google/gdata/model/gd/When;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 450
    return-object p0
.end method

.method public clearLocations()V
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lcom/google/gdata/model/gd/Where;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    .line 228
    return-void
.end method

.method public clearParticipants()V
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lcom/google/gdata/model/gd/Who;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    .line 302
    return-void
.end method

.method public clearRecurrenceException()V
    .locals 1

    .prologue
    .line 377
    sget-object v0, Lcom/google/gdata/model/gd/RecurrenceException;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    .line 378
    return-void
.end method

.method public clearReminders()V
    .locals 1

    .prologue
    .line 422
    sget-object v0, Lcom/google/gdata/model/gd/Reminder;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    .line 423
    return-void
.end method

.method public clearTimes()V
    .locals 1

    .prologue
    .line 467
    sget-object v0, Lcom/google/gdata/model/gd/When;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    .line 468
    return-void
.end method

.method public getComments()Lcom/google/gdata/model/gd/Comments;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/google/gdata/model/gd/Comments;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/Comments;

    return-object v0
.end method

.method public getEventStatus()Lcom/google/gdata/model/gd/EventStatus;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/google/gdata/model/gd/EventStatus;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/EventStatus;

    return-object v0
.end method

.method public getLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/gd/Where;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    sget-object v0, Lcom/google/gdata/model/gd/Where;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElements(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalEvent()Lcom/google/gdata/model/gd/OriginalEvent;
    .locals 1

    .prologue
    .line 245
    sget-object v0, Lcom/google/gdata/model/gd/OriginalEvent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/OriginalEvent;

    return-object v0
.end method

.method public getParticipants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/gd/Who;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    sget-object v0, Lcom/google/gdata/model/gd/Who;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElements(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRecurrence()Lcom/google/gdata/model/gd/Recurrence;
    .locals 1

    .prologue
    .line 319
    sget-object v0, Lcom/google/gdata/model/gd/Recurrence;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/Recurrence;

    return-object v0
.end method

.method public getRecurrenceException()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/gd/RecurrenceException;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    sget-object v0, Lcom/google/gdata/model/gd/RecurrenceException;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElements(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReminders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/gd/Reminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    sget-object v0, Lcom/google/gdata/model/gd/Reminder;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElements(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/gd/When;",
            ">;"
        }
    .end annotation

    .prologue
    .line 440
    sget-object v0, Lcom/google/gdata/model/gd/When;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElements(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransparency()Lcom/google/gdata/model/gd/Transparency;
    .locals 1

    .prologue
    .line 485
    sget-object v0, Lcom/google/gdata/model/gd/Transparency;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/Transparency;

    return-object v0
.end method

.method public getVisibility()Lcom/google/gdata/model/gd/Visibility;
    .locals 1

    .prologue
    .line 514
    sget-object v0, Lcom/google/gdata/model/gd/Visibility;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/Visibility;

    return-object v0
.end method

.method public hasComments()Z
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/google/gdata/model/gd/Comments;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasEventStatus()Z
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/google/gdata/model/gd/EventStatus;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasLocations()Z
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lcom/google/gdata/model/gd/Where;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasOriginalEvent()Z
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/google/gdata/model/gd/OriginalEvent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasParticipants()Z
    .locals 1

    .prologue
    .line 310
    sget-object v0, Lcom/google/gdata/model/gd/Who;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasRecurrence()Z
    .locals 1

    .prologue
    .line 339
    sget-object v0, Lcom/google/gdata/model/gd/Recurrence;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasRecurrenceException()Z
    .locals 1

    .prologue
    .line 386
    sget-object v0, Lcom/google/gdata/model/gd/RecurrenceException;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasReminders()Z
    .locals 1

    .prologue
    .line 431
    sget-object v0, Lcom/google/gdata/model/gd/Reminder;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasTimes()Z
    .locals 1

    .prologue
    .line 476
    sget-object v0, Lcom/google/gdata/model/gd/When;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasTransparency()Z
    .locals 1

    .prologue
    .line 505
    sget-object v0, Lcom/google/gdata/model/gd/Transparency;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasVisibility()Z
    .locals 1

    .prologue
    .line 534
    sget-object v0, Lcom/google/gdata/model/gd/Visibility;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic lock()Lcom/google/gdata/model/Element;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/EventEntry;->lock()Lcom/google/gdata/model/gd/EventEntry;

    move-result-object v0

    return-object v0
.end method

.method public lock()Lcom/google/gdata/model/gd/EventEntry;
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lcom/google/gdata/model/atom/Entry;->lock()Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/EventEntry;

    return-object v0
.end method

.method public removeLocation(Lcom/google/gdata/model/gd/Where;)Z
    .locals 1
    .param p1, "location"    # Lcom/google/gdata/model/gd/Where;

    .prologue
    .line 220
    invoke-super {p0, p1}, Lcom/google/gdata/model/atom/Entry;->removeElement(Lcom/google/gdata/model/Element;)Z

    move-result v0

    return v0
.end method

.method public removeParticipant(Lcom/google/gdata/model/gd/Who;)Z
    .locals 1
    .param p1, "participant"    # Lcom/google/gdata/model/gd/Who;

    .prologue
    .line 294
    invoke-super {p0, p1}, Lcom/google/gdata/model/atom/Entry;->removeElement(Lcom/google/gdata/model/Element;)Z

    move-result v0

    return v0
.end method

.method public removeRecurrenceException(Lcom/google/gdata/model/gd/RecurrenceException;)Z
    .locals 1
    .param p1, "recurrenceException"    # Lcom/google/gdata/model/gd/RecurrenceException;

    .prologue
    .line 370
    invoke-super {p0, p1}, Lcom/google/gdata/model/atom/Entry;->removeElement(Lcom/google/gdata/model/Element;)Z

    move-result v0

    return v0
.end method

.method public removeReminder(Lcom/google/gdata/model/gd/Reminder;)Z
    .locals 1
    .param p1, "reminder"    # Lcom/google/gdata/model/gd/Reminder;

    .prologue
    .line 415
    invoke-super {p0, p1}, Lcom/google/gdata/model/atom/Entry;->removeElement(Lcom/google/gdata/model/Element;)Z

    move-result v0

    return v0
.end method

.method public removeTime(Lcom/google/gdata/model/gd/When;)Z
    .locals 1
    .param p1, "time"    # Lcom/google/gdata/model/gd/When;

    .prologue
    .line 460
    invoke-super {p0, p1}, Lcom/google/gdata/model/atom/Entry;->removeElement(Lcom/google/gdata/model/Element;)Z

    move-result v0

    return v0
.end method

.method public setComments(Lcom/google/gdata/model/gd/Comments;)Lcom/google/gdata/model/gd/EventEntry;
    .locals 1
    .param p1, "comments"    # Lcom/google/gdata/model/gd/Comments;

    .prologue
    .line 152
    sget-object v0, Lcom/google/gdata/model/gd/Comments;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 153
    return-object p0
.end method

.method public setEventStatus(Lcom/google/gdata/model/gd/EventStatus;)Lcom/google/gdata/model/gd/EventEntry;
    .locals 1
    .param p1, "eventStatus"    # Lcom/google/gdata/model/gd/EventStatus;

    .prologue
    .line 181
    sget-object v0, Lcom/google/gdata/model/gd/EventStatus;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 182
    return-object p0
.end method

.method public setOriginalEvent(Lcom/google/gdata/model/gd/OriginalEvent;)Lcom/google/gdata/model/gd/EventEntry;
    .locals 1
    .param p1, "originalEvent"    # Lcom/google/gdata/model/gd/OriginalEvent;

    .prologue
    .line 255
    sget-object v0, Lcom/google/gdata/model/gd/OriginalEvent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 256
    return-object p0
.end method

.method public setRecurrence(Lcom/google/gdata/model/gd/Recurrence;)Lcom/google/gdata/model/gd/EventEntry;
    .locals 1
    .param p1, "recurrence"    # Lcom/google/gdata/model/gd/Recurrence;

    .prologue
    .line 329
    sget-object v0, Lcom/google/gdata/model/gd/Recurrence;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 330
    return-object p0
.end method

.method public setTransparency(Lcom/google/gdata/model/gd/Transparency;)Lcom/google/gdata/model/gd/EventEntry;
    .locals 1
    .param p1, "transparency"    # Lcom/google/gdata/model/gd/Transparency;

    .prologue
    .line 495
    sget-object v0, Lcom/google/gdata/model/gd/Transparency;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 496
    return-object p0
.end method

.method public setVisibility(Lcom/google/gdata/model/gd/Visibility;)Lcom/google/gdata/model/gd/EventEntry;
    .locals 1
    .param p1, "visibility"    # Lcom/google/gdata/model/gd/Visibility;

    .prologue
    .line 524
    sget-object v0, Lcom/google/gdata/model/gd/Visibility;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 525
    return-object p0
.end method
