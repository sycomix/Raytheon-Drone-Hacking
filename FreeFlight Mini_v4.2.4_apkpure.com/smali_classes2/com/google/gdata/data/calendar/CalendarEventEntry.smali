.class public Lcom/google/gdata/data/calendar/CalendarEventEntry;
.super Lcom/google/gdata/data/extensions/BaseEventEntry;
.source "CalendarEventEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/extensions/BaseEventEntry",
        "<",
        "Lcom/google/gdata/data/calendar/CalendarEventEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/gdata/data/extensions/BaseEventEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public addExtendedProperty(Lcom/google/gdata/data/extensions/ExtendedProperty;)V
    .locals 1
    .param p1, "prop"    # Lcom/google/gdata/data/extensions/ExtendedProperty;

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->getExtendedProperty()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public addParticipant(Lcom/google/gdata/data/calendar/EventWho;)V
    .locals 1
    .param p1, "participant"    # Lcom/google/gdata/data/calendar/EventWho;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->getParticipants()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-super {p0, p1}, Lcom/google/gdata/data/extensions/BaseEventEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 41
    const-class v0, Lcom/google/gdata/data/calendar/CalendarEventEntry;

    invoke-static {}, Lcom/google/gdata/data/calendar/QuickAddProperty;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 43
    const-class v0, Lcom/google/gdata/data/calendar/CalendarEventEntry;

    invoke-static {}, Lcom/google/gdata/data/extensions/ExtendedProperty;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 45
    const-class v0, Lcom/google/gdata/data/calendar/CalendarEventEntry;

    invoke-static {}, Lcom/google/gdata/data/calendar/SendEventNotificationsProperty;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 47
    const-class v0, Lcom/google/gdata/data/calendar/CalendarEventEntry;

    invoke-static {}, Lcom/google/gdata/data/calendar/IcalUIDProperty;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 49
    const-class v0, Lcom/google/gdata/data/calendar/CalendarEventEntry;

    invoke-static {}, Lcom/google/gdata/data/calendar/SequenceNumberProperty;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 51
    const-class v0, Lcom/google/gdata/data/calendar/CalendarEventEntry;

    invoke-static {}, Lcom/google/gdata/data/calendar/SyncEventProperty;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 53
    const-class v0, Lcom/google/gdata/data/calendar/CalendarEventEntry;

    invoke-static {v2, v2}, Lcom/google/gdata/data/calendar/PrivateCopyProperty;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 58
    const-class v0, Lcom/google/gdata/data/calendar/CalendarEventEntry;

    invoke-static {}, Lcom/google/gdata/data/calendar/EventWho;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 60
    const-class v0, Lcom/google/gdata/data/calendar/EventWho;

    invoke-static {}, Lcom/google/gdata/data/calendar/ResourceProperty;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 64
    const-class v0, Lcom/google/gdata/data/Link;

    invoke-static {}, Lcom/google/gdata/data/calendar/WebContent;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 65
    const-class v0, Lcom/google/gdata/data/calendar/CalendarEventEntry;

    invoke-static {v2, v2}, Lcom/google/gdata/data/calendar/GuestsCanModifyProperty;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 67
    const-class v0, Lcom/google/gdata/data/calendar/CalendarEventEntry;

    invoke-static {v2, v2}, Lcom/google/gdata/data/calendar/GuestsCanInviteOthersProperty;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 69
    const-class v0, Lcom/google/gdata/data/calendar/CalendarEventEntry;

    invoke-static {v2, v2}, Lcom/google/gdata/data/calendar/GuestsCanSeeGuestsProperty;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 71
    const-class v0, Lcom/google/gdata/data/calendar/CalendarEventEntry;

    invoke-static {v2, v2}, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 73
    return-void
.end method

.method public getExtendedProperty()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/extensions/ExtendedProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    const-class v0, Lcom/google/gdata/data/extensions/ExtendedProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIcalUID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    const-class v1, Lcom/google/gdata/data/calendar/IcalUIDProperty;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/calendar/IcalUIDProperty;

    .line 177
    .local v0, "uid":Lcom/google/gdata/data/calendar/IcalUIDProperty;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/calendar/IcalUIDProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getParticipants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/calendar/EventWho;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    const-class v0, Lcom/google/gdata/data/calendar/EventWho;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getQuickAdd()Z
    .locals 3

    .prologue
    .line 107
    const-class v1, Lcom/google/gdata/data/calendar/QuickAddProperty;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/calendar/QuickAddProperty;

    .line 108
    .local v0, "quickAdd":Lcom/google/gdata/data/calendar/QuickAddProperty;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0}, Lcom/google/gdata/data/calendar/QuickAddProperty;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSendEventNotifications()Z
    .locals 2

    .prologue
    .line 157
    const-class v1, Lcom/google/gdata/data/calendar/SendEventNotificationsProperty;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/calendar/SendEventNotificationsProperty;

    .line 159
    .local v0, "send":Lcom/google/gdata/data/calendar/SendEventNotificationsProperty;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/data/calendar/SendEventNotificationsProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSequence()I
    .locals 2

    .prologue
    .line 203
    const-class v1, Lcom/google/gdata/data/calendar/SequenceNumberProperty;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/calendar/SequenceNumberProperty;

    .line 205
    .local v0, "seq":Lcom/google/gdata/data/calendar/SequenceNumberProperty;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/calendar/SequenceNumberProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getWebContent()Lcom/google/gdata/data/calendar/WebContent;
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->getWebContentLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 231
    .local v0, "webContentLink":Lcom/google/gdata/data/Link;
    if-nez v0, :cond_0

    .line 232
    const/4 v1, 0x0

    .line 234
    :goto_0
    return-object v1

    :cond_0
    const-class v1, Lcom/google/gdata/data/calendar/WebContent;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/Link;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/calendar/WebContent;

    goto :goto_0
.end method

.method public getWebContentLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 220
    const-string v0, "http://schemas.google.com/gCal/2005/webContent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public hasAnyoneCanAddSelf()Z
    .locals 1

    .prologue
    .line 318
    const-class v0, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasGuestsCanInviteOthers()Z
    .locals 1

    .prologue
    .line 286
    const-class v0, Lcom/google/gdata/data/calendar/GuestsCanInviteOthersProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasGuestsCanModify()Z
    .locals 1

    .prologue
    .line 270
    const-class v0, Lcom/google/gdata/data/calendar/GuestsCanModifyProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasGuestsCanSeeGuests()Z
    .locals 1

    .prologue
    .line 302
    const-class v0, Lcom/google/gdata/data/calendar/GuestsCanSeeGuestsProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasSequence()Z
    .locals 1

    .prologue
    .line 196
    const-class v0, Lcom/google/gdata/data/calendar/SequenceNumberProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isAnyoneCanAddSelf()Z
    .locals 2

    .prologue
    .line 312
    const-class v1, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;

    .line 314
    .local v0, "anyoneCanAddSelf":Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGuestsCanInviteOthers()Z
    .locals 2

    .prologue
    .line 280
    const-class v1, Lcom/google/gdata/data/calendar/GuestsCanInviteOthersProperty;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/calendar/GuestsCanInviteOthersProperty;

    .line 282
    .local v0, "guestsCanInviteOthers":Lcom/google/gdata/data/calendar/GuestsCanInviteOthersProperty;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/data/calendar/GuestsCanInviteOthersProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGuestsCanModify()Z
    .locals 2

    .prologue
    .line 264
    const-class v1, Lcom/google/gdata/data/calendar/GuestsCanModifyProperty;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/calendar/GuestsCanModifyProperty;

    .line 266
    .local v0, "guestsCanModify":Lcom/google/gdata/data/calendar/GuestsCanModifyProperty;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/data/calendar/GuestsCanModifyProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGuestsCanSeeGuests()Z
    .locals 2

    .prologue
    .line 296
    const-class v1, Lcom/google/gdata/data/calendar/GuestsCanSeeGuestsProperty;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/calendar/GuestsCanSeeGuestsProperty;

    .line 298
    .local v0, "guestsCanSeeGuests":Lcom/google/gdata/data/calendar/GuestsCanSeeGuestsProperty;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/data/calendar/GuestsCanSeeGuestsProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPrivateCopy()Z
    .locals 2

    .prologue
    .line 142
    const-class v1, Lcom/google/gdata/data/calendar/PrivateCopyProperty;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/calendar/PrivateCopyProperty;

    .line 143
    .local v0, "privateCopy":Lcom/google/gdata/data/calendar/PrivateCopyProperty;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/data/calendar/PrivateCopyProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSyncEvent()Z
    .locals 3

    .prologue
    .line 128
    const-class v1, Lcom/google/gdata/data/calendar/SyncEventProperty;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/calendar/SyncEventProperty;

    .line 129
    .local v0, "syncEvent":Lcom/google/gdata/data/calendar/SyncEventProperty;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0}, Lcom/google/gdata/data/calendar/SyncEventProperty;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAnyoneCanAddSelf(Z)V
    .locals 1
    .param p1, "anyoneCanAddSelf"    # Z

    .prologue
    .line 306
    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;->TRUE:Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 309
    return-void

    .line 306
    :cond_0
    sget-object v0, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;->FALSE:Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;

    goto :goto_0
.end method

.method public setGuestsCanInviteOthers(Z)V
    .locals 1
    .param p1, "guestsCanInviteOthers"    # Z

    .prologue
    .line 274
    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/gdata/data/calendar/GuestsCanInviteOthersProperty;->TRUE:Lcom/google/gdata/data/calendar/GuestsCanInviteOthersProperty;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 277
    return-void

    .line 274
    :cond_0
    sget-object v0, Lcom/google/gdata/data/calendar/GuestsCanInviteOthersProperty;->FALSE:Lcom/google/gdata/data/calendar/GuestsCanInviteOthersProperty;

    goto :goto_0
.end method

.method public setGuestsCanModify(Z)V
    .locals 1
    .param p1, "guestsCanModify"    # Z

    .prologue
    .line 258
    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/gdata/data/calendar/GuestsCanModifyProperty;->TRUE:Lcom/google/gdata/data/calendar/GuestsCanModifyProperty;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 261
    return-void

    .line 258
    :cond_0
    sget-object v0, Lcom/google/gdata/data/calendar/GuestsCanModifyProperty;->FALSE:Lcom/google/gdata/data/calendar/GuestsCanModifyProperty;

    goto :goto_0
.end method

.method public setGuestsCanSeeGuests(Z)V
    .locals 1
    .param p1, "guestsCanSeeGuests"    # Z

    .prologue
    .line 290
    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/gdata/data/calendar/GuestsCanSeeGuestsProperty;->TRUE:Lcom/google/gdata/data/calendar/GuestsCanSeeGuestsProperty;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 293
    return-void

    .line 290
    :cond_0
    sget-object v0, Lcom/google/gdata/data/calendar/GuestsCanSeeGuestsProperty;->FALSE:Lcom/google/gdata/data/calendar/GuestsCanSeeGuestsProperty;

    goto :goto_0
.end method

.method public setIcalUID(Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 186
    const-class v0, Lcom/google/gdata/data/calendar/IcalUIDProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->removeExtension(Ljava/lang/Class;)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v0, Lcom/google/gdata/data/calendar/IcalUIDProperty;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/calendar/IcalUIDProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setPrivateCopy(Z)V
    .locals 1
    .param p1, "privateCopy"    # Z

    .prologue
    .line 148
    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/gdata/data/calendar/PrivateCopyProperty;->TRUE:Lcom/google/gdata/data/calendar/PrivateCopyProperty;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 150
    return-void

    .line 148
    :cond_0
    sget-object v0, Lcom/google/gdata/data/calendar/PrivateCopyProperty;->FALSE:Lcom/google/gdata/data/calendar/PrivateCopyProperty;

    goto :goto_0
.end method

.method public setQuickAdd(Z)V
    .locals 1
    .param p1, "quickAdd"    # Z

    .prologue
    .line 120
    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/gdata/data/calendar/QuickAddProperty;->TRUE:Lcom/google/gdata/data/calendar/QuickAddProperty;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 121
    return-void

    .line 120
    :cond_0
    sget-object v0, Lcom/google/gdata/data/calendar/QuickAddProperty;->FALSE:Lcom/google/gdata/data/calendar/QuickAddProperty;

    goto :goto_0
.end method

.method public setSendEventNotifications(Z)V
    .locals 1
    .param p1, "send"    # Z

    .prologue
    .line 167
    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/gdata/data/calendar/SendEventNotificationsProperty;->TRUE:Lcom/google/gdata/data/calendar/SendEventNotificationsProperty;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 169
    return-void

    .line 167
    :cond_0
    sget-object v0, Lcom/google/gdata/data/calendar/SendEventNotificationsProperty;->FALSE:Lcom/google/gdata/data/calendar/SendEventNotificationsProperty;

    goto :goto_0
.end method

.method public setSequence(I)V
    .locals 2
    .param p1, "sequence"    # I

    .prologue
    .line 212
    new-instance v0, Lcom/google/gdata/data/calendar/SequenceNumberProperty;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/data/calendar/SequenceNumberProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 213
    return-void
.end method

.method public setSyncEvent(Z)V
    .locals 1
    .param p1, "syncEvent"    # Z

    .prologue
    .line 137
    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/gdata/data/calendar/SyncEventProperty;->TRUE:Lcom/google/gdata/data/calendar/SyncEventProperty;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 138
    return-void

    .line 137
    :cond_0
    sget-object v0, Lcom/google/gdata/data/calendar/SyncEventProperty;->FALSE:Lcom/google/gdata/data/calendar/SyncEventProperty;

    goto :goto_0
.end method

.method public setWebContent(Lcom/google/gdata/data/calendar/WebContent;)V
    .locals 3
    .param p1, "wc"    # Lcom/google/gdata/data/calendar/WebContent;

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->getWebContentLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 242
    .local v0, "oldWebContentLink":Lcom/google/gdata/data/Link;
    if-nez p1, :cond_1

    .line 244
    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->getLinks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    if-nez v0, :cond_2

    .line 249
    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->getLinks()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gdata/data/calendar/WebContent;->getLink()Lcom/google/gdata/data/Link;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {p1}, Lcom/google/gdata/data/calendar/WebContent;->getLink()Lcom/google/gdata/data/Link;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->getLinks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 253
    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->getLinks()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gdata/data/calendar/WebContent;->getLink()Lcom/google/gdata/data/Link;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
