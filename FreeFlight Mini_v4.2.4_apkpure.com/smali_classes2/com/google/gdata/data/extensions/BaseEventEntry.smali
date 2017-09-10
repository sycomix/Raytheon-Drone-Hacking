.class public Lcom/google/gdata/data/extensions/BaseEventEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "BaseEventEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/extensions/BaseEventEntry$Transparency;,
        Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;,
        Lcom/google/gdata/data/extensions/BaseEventEntry$EventStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/google/gdata/data/extensions/BaseEventEntry",
        "<TE;>;>",
        "Lcom/google/gdata/data/BaseEntry",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    .local p0, "this":Lcom/google/gdata/data/extensions/BaseEventEntry;, "Lcom/google/gdata/data/extensions/BaseEventEntry<TE;>;"
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 40
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/BaseEventEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/extensions/EventEntry;->EVENT_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
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
    .line 50
    .local p0, "this":Lcom/google/gdata/data/extensions/BaseEventEntry;, "Lcom/google/gdata/data/extensions/BaseEventEntry<TE;>;"
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 51
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/BaseEventEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/extensions/EventEntry;->EVENT_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method


# virtual methods
.method public addLocation(Lcom/google/gdata/data/extensions/Where;)V
    .locals 1
    .param p1, "location"    # Lcom/google/gdata/data/extensions/Where;

    .prologue
    .line 97
    .local p0, "this":Lcom/google/gdata/data/extensions/BaseEventEntry;, "Lcom/google/gdata/data/extensions/BaseEventEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/BaseEventEntry;->getLocations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public addRecurrenceException(Lcom/google/gdata/data/extensions/RecurrenceException;)V
    .locals 1
    .param p1, "exception"    # Lcom/google/gdata/data/extensions/RecurrenceException;

    .prologue
    .line 279
    .local p0, "this":Lcom/google/gdata/data/extensions/BaseEventEntry;, "Lcom/google/gdata/data/extensions/BaseEventEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/BaseEventEntry;->getRecurrenceException()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    return-void
.end method

.method public addTime(Lcom/google/gdata/data/extensions/When;)V
    .locals 1
    .param p1, "time"    # Lcom/google/gdata/data/extensions/When;

    .prologue
    .line 83
    .local p0, "this":Lcom/google/gdata/data/extensions/BaseEventEntry;, "Lcom/google/gdata/data/extensions/BaseEventEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/BaseEventEntry;->getTimes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 57
    .local p0, "this":Lcom/google/gdata/data/extensions/BaseEventEntry;, "Lcom/google/gdata/data/extensions/BaseEventEntry<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 58
    .local v0, "eventEntryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/extensions/BaseEventEntry;>;"
    invoke-static {}, Lcom/google/gdata/data/extensions/RecurrenceException;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 60
    invoke-static {}, Lcom/google/gdata/data/extensions/Reminder;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 61
    invoke-static {}, Lcom/google/gdata/data/extensions/Recurrence;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 62
    invoke-static {}, Lcom/google/gdata/data/extensions/Where;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 63
    invoke-static {}, Lcom/google/gdata/data/extensions/BaseEventEntry$EventStatus;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 64
    invoke-static {}, Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 65
    invoke-static {}, Lcom/google/gdata/data/extensions/BaseEventEntry$Transparency;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 66
    invoke-static {}, Lcom/google/gdata/data/extensions/When;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 67
    invoke-static {}, Lcom/google/gdata/data/extensions/OriginalEvent;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 68
    invoke-static {}, Lcom/google/gdata/data/extensions/Comments;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 69
    const-class v1, Lcom/google/gdata/data/extensions/When;

    invoke-static {}, Lcom/google/gdata/data/extensions/Reminder;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 70
    return-void
.end method

.method public getLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/extensions/Where;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/google/gdata/data/extensions/BaseEventEntry;, "Lcom/google/gdata/data/extensions/BaseEventEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/Where;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/BaseEventEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalEvent()Lcom/google/gdata/data/extensions/OriginalEvent;
    .locals 1

    .prologue
    .line 286
    .local p0, "this":Lcom/google/gdata/data/extensions/BaseEventEntry;, "Lcom/google/gdata/data/extensions/BaseEventEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/OriginalEvent;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/BaseEventEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/OriginalEvent;

    return-object v0
.end method

.method public getRecurrence()Lcom/google/gdata/data/extensions/Recurrence;
    .locals 1

    .prologue
    .line 258
    .local p0, "this":Lcom/google/gdata/data/extensions/BaseEventEntry;, "Lcom/google/gdata/data/extensions/BaseEventEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/Recurrence;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/BaseEventEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Recurrence;

    return-object v0
.end method

.method public getRecurrenceException()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/extensions/RecurrenceException;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lcom/google/gdata/data/extensions/BaseEventEntry;, "Lcom/google/gdata/data/extensions/BaseEventEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/RecurrenceException;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/BaseEventEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReminder()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/extensions/Reminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "this":Lcom/google/gdata/data/extensions/BaseEventEntry;, "Lcom/google/gdata/data/extensions/BaseEventEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/BaseEventEntry;->getRecurrence()Lcom/google/gdata/data/extensions/Recurrence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 302
    const-class v1, Lcom/google/gdata/data/extensions/Reminder;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/extensions/BaseEventEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 309
    :goto_0
    return-object v1

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/BaseEventEntry;->getTimes()Ljava/util/List;

    move-result-object v0

    .line 306
    .local v0, "whenList":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/data/extensions/When;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    .line 307
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/extensions/When;

    const-class v2, Lcom/google/gdata/data/extensions/Reminder;

    invoke-virtual {v1, v2}, Lcom/google/gdata/data/extensions/When;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 309
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStatus()Lcom/google/gdata/data/extensions/BaseEventEntry$EventStatus;
    .locals 1

    .prologue
    .line 143
    .local p0, "this":Lcom/google/gdata/data/extensions/BaseEventEntry;, "Lcom/google/gdata/data/extensions/BaseEventEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/BaseEventEntry$EventStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/BaseEventEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/BaseEventEntry$EventStatus;

    return-object v0
.end method

.method public getTimes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/extensions/When;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/google/gdata/data/extensions/BaseEventEntry;, "Lcom/google/gdata/data/extensions/BaseEventEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/When;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/BaseEventEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransparency()Lcom/google/gdata/data/extensions/BaseEventEntry$Transparency;
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Lcom/google/gdata/data/extensions/BaseEventEntry;, "Lcom/google/gdata/data/extensions/BaseEventEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/BaseEventEntry$Transparency;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/BaseEventEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/BaseEventEntry$Transparency;

    return-object v0
.end method

.method public getVisibility()Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;
    .locals 1

    .prologue
    .line 201
    .local p0, "this":Lcom/google/gdata/data/extensions/BaseEventEntry;, "Lcom/google/gdata/data/extensions/BaseEventEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/BaseEventEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;

    return-object v0
.end method

.method public setOriginalEvent(Lcom/google/gdata/data/extensions/OriginalEvent;)V
    .locals 0
    .param p1, "v"    # Lcom/google/gdata/data/extensions/OriginalEvent;

    .prologue
    .line 293
    .local p0, "this":Lcom/google/gdata/data/extensions/BaseEventEntry;, "Lcom/google/gdata/data/extensions/BaseEventEntry<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/BaseEventEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 294
    return-void
.end method

.method public setRecurrence(Lcom/google/gdata/data/extensions/Recurrence;)V
    .locals 0
    .param p1, "v"    # Lcom/google/gdata/data/extensions/Recurrence;

    .prologue
    .line 265
    .local p0, "this":Lcom/google/gdata/data/extensions/BaseEventEntry;, "Lcom/google/gdata/data/extensions/BaseEventEntry<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/BaseEventEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 266
    return-void
.end method

.method public setStatus(Lcom/google/gdata/data/extensions/BaseEventEntry$EventStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/google/gdata/data/extensions/BaseEventEntry$EventStatus;

    .prologue
    .line 150
    .local p0, "this":Lcom/google/gdata/data/extensions/BaseEventEntry;, "Lcom/google/gdata/data/extensions/BaseEventEntry<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/BaseEventEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 151
    return-void
.end method

.method public setTransparency(Lcom/google/gdata/data/extensions/BaseEventEntry$Transparency;)V
    .locals 0
    .param p1, "transparency"    # Lcom/google/gdata/data/extensions/BaseEventEntry$Transparency;

    .prologue
    .line 251
    .local p0, "this":Lcom/google/gdata/data/extensions/BaseEventEntry;, "Lcom/google/gdata/data/extensions/BaseEventEntry<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/BaseEventEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 252
    return-void
.end method

.method public setVisibility(Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;)V
    .locals 0
    .param p1, "v"    # Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;

    .prologue
    .line 208
    .local p0, "this":Lcom/google/gdata/data/extensions/BaseEventEntry;, "Lcom/google/gdata/data/extensions/BaseEventEntry<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/BaseEventEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 209
    return-void
.end method
