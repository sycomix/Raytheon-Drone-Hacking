.class public Lcom/google/gdata/data/calendar/CalendarEventFeed;
.super Lcom/google/gdata/data/extensions/BaseEventFeed;
.source "CalendarEventFeed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/extensions/BaseEventFeed",
        "<",
        "Lcom/google/gdata/data/calendar/CalendarEventFeed;",
        "Lcom/google/gdata/data/calendar/CalendarEventEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/google/gdata/data/calendar/CalendarEventEntry;

    invoke-direct {p0, v0}, Lcom/google/gdata/data/extensions/BaseEventFeed;-><init>(Ljava/lang/Class;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseFeed;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "sourceFeed":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    const-class v0, Lcom/google/gdata/data/calendar/CalendarEventEntry;

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/data/extensions/BaseEventFeed;-><init>(Ljava/lang/Class;Lcom/google/gdata/data/BaseFeed;)V

    .line 48
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 8
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v5, 0x0

    .line 52
    const-class v0, Lcom/google/gdata/data/calendar/CalendarEventFeed;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/extensions/BaseEventFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 56
    const-class v7, Lcom/google/gdata/data/calendar/CalendarEventFeed;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/calendar/TimeZoneProperty;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "gCal"

    const-string v4, "http://schemas.google.com/gCal/2005"

    invoke-direct {v2, v3, v4}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "timezone"

    const/4 v4, 0x1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 60
    const-class v0, Lcom/google/gdata/data/calendar/CalendarEventFeed;

    const-class v1, Lcom/google/gdata/data/calendar/TimesCleanedProperty;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getTimeZone()Lcom/google/gdata/data/calendar/TimeZoneProperty;
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/google/gdata/data/calendar/TimeZoneProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEventFeed;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/calendar/TimeZoneProperty;

    return-object v0
.end method

.method public getTimesCleaned()Lcom/google/gdata/data/calendar/TimesCleanedProperty;
    .locals 1

    .prologue
    .line 100
    const-class v0, Lcom/google/gdata/data/calendar/TimesCleanedProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEventFeed;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/calendar/TimesCleanedProperty;

    return-object v0
.end method

.method public hasTimeZone()Z
    .locals 1

    .prologue
    .line 91
    const-class v0, Lcom/google/gdata/data/calendar/TimeZoneProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEventFeed;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasTimesCleaned()Z
    .locals 1

    .prologue
    .line 122
    const-class v0, Lcom/google/gdata/data/calendar/TimesCleanedProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEventFeed;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setTimeZone(Lcom/google/gdata/data/calendar/TimeZoneProperty;)V
    .locals 1
    .param p1, "timeZone"    # Lcom/google/gdata/data/calendar/TimeZoneProperty;

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    const-class v0, Lcom/google/gdata/data/calendar/TimeZoneProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEventFeed;->removeExtension(Ljava/lang/Class;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/calendar/CalendarEventFeed;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setTimesCleaned(Lcom/google/gdata/data/calendar/TimesCleanedProperty;)V
    .locals 1
    .param p1, "timesCleaned"    # Lcom/google/gdata/data/calendar/TimesCleanedProperty;

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    const-class v0, Lcom/google/gdata/data/calendar/TimesCleanedProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEventFeed;->removeExtension(Ljava/lang/Class;)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/calendar/CalendarEventFeed;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{CalendarEventFeed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method
