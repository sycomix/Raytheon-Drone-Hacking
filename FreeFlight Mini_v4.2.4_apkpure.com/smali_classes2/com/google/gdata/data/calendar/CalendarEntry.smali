.class public Lcom/google/gdata/data/calendar/CalendarEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "CalendarEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/calendar/CalendarEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 0
    .param p1, "sourceEntry"    # Lcom/google/gdata/data/BaseEntry;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 48
    return-void
.end method


# virtual methods
.method public addLocation(Lcom/google/gdata/data/extensions/Where;)V
    .locals 1
    .param p1, "location"    # Lcom/google/gdata/data/extensions/Where;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/CalendarEntry;->getLocations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v2, 0x0

    .line 56
    const-class v0, Lcom/google/gdata/data/calendar/CalendarEntry;

    invoke-static {}, Lcom/google/gdata/data/calendar/AccessLevelProperty;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 58
    const-class v0, Lcom/google/gdata/data/calendar/CalendarEntry;

    invoke-static {}, Lcom/google/gdata/data/calendar/ColorProperty;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 60
    const-class v0, Lcom/google/gdata/data/calendar/CalendarEntry;

    invoke-static {}, Lcom/google/gdata/data/calendar/HiddenProperty;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 62
    const-class v0, Lcom/google/gdata/data/calendar/CalendarEntry;

    invoke-static {}, Lcom/google/gdata/data/calendar/OverrideNameProperty;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 64
    const-class v0, Lcom/google/gdata/data/calendar/CalendarEntry;

    invoke-static {}, Lcom/google/gdata/data/calendar/SelectedProperty;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 66
    const-class v0, Lcom/google/gdata/data/calendar/CalendarEntry;

    invoke-static {}, Lcom/google/gdata/data/calendar/TimeZoneProperty;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 68
    const-class v0, Lcom/google/gdata/data/calendar/CalendarEntry;

    invoke-static {v2, v2}, Lcom/google/gdata/data/calendar/TimesCleanedProperty;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 70
    const-class v0, Lcom/google/gdata/data/calendar/CalendarEntry;

    invoke-static {}, Lcom/google/gdata/data/extensions/When;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 71
    const-class v0, Lcom/google/gdata/data/calendar/CalendarEntry;

    invoke-static {}, Lcom/google/gdata/data/extensions/Where;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 72
    return-void
.end method

.method public getAccessLevel()Lcom/google/gdata/data/calendar/AccessLevelProperty;
    .locals 1

    .prologue
    .line 94
    const-class v0, Lcom/google/gdata/data/calendar/AccessLevelProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/calendar/AccessLevelProperty;

    return-object v0
.end method

.method public getColor()Lcom/google/gdata/data/calendar/ColorProperty;
    .locals 1

    .prologue
    .line 109
    const-class v0, Lcom/google/gdata/data/calendar/ColorProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/calendar/ColorProperty;

    return-object v0
.end method

.method public getHidden()Lcom/google/gdata/data/calendar/HiddenProperty;
    .locals 1

    .prologue
    .line 124
    const-class v0, Lcom/google/gdata/data/calendar/HiddenProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/calendar/HiddenProperty;

    return-object v0
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
    .line 79
    const-class v0, Lcom/google/gdata/data/extensions/Where;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOverrideName()Lcom/google/gdata/data/calendar/OverrideNameProperty;
    .locals 1

    .prologue
    .line 139
    const-class v0, Lcom/google/gdata/data/calendar/OverrideNameProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/calendar/OverrideNameProperty;

    return-object v0
.end method

.method public getSelected()Lcom/google/gdata/data/calendar/SelectedProperty;
    .locals 1

    .prologue
    .line 154
    const-class v0, Lcom/google/gdata/data/calendar/SelectedProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/calendar/SelectedProperty;

    return-object v0
.end method

.method public getTimeZone()Lcom/google/gdata/data/calendar/TimeZoneProperty;
    .locals 1

    .prologue
    .line 169
    const-class v0, Lcom/google/gdata/data/calendar/TimeZoneProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/calendar/TimeZoneProperty;

    return-object v0
.end method

.method public getTimesCleaned()Lcom/google/gdata/data/calendar/TimesCleanedProperty;
    .locals 1

    .prologue
    .line 184
    const-class v0, Lcom/google/gdata/data/calendar/TimesCleanedProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/calendar/TimesCleanedProperty;

    return-object v0
.end method

.method public setAccessLevel(Lcom/google/gdata/data/calendar/AccessLevelProperty;)V
    .locals 0
    .param p1, "accesslevel"    # Lcom/google/gdata/data/calendar/AccessLevelProperty;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/calendar/CalendarEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 103
    return-void
.end method

.method public setColor(Lcom/google/gdata/data/calendar/ColorProperty;)V
    .locals 0
    .param p1, "color"    # Lcom/google/gdata/data/calendar/ColorProperty;

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/calendar/CalendarEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 118
    return-void
.end method

.method public setHidden(Lcom/google/gdata/data/calendar/HiddenProperty;)V
    .locals 0
    .param p1, "hidden"    # Lcom/google/gdata/data/calendar/HiddenProperty;

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/calendar/CalendarEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 133
    return-void
.end method

.method public setOverrideName(Lcom/google/gdata/data/calendar/OverrideNameProperty;)V
    .locals 0
    .param p1, "name"    # Lcom/google/gdata/data/calendar/OverrideNameProperty;

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/calendar/CalendarEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 148
    return-void
.end method

.method public setSelected(Lcom/google/gdata/data/calendar/SelectedProperty;)V
    .locals 0
    .param p1, "selected"    # Lcom/google/gdata/data/calendar/SelectedProperty;

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/calendar/CalendarEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 163
    return-void
.end method

.method public setTimeZone(Lcom/google/gdata/data/calendar/TimeZoneProperty;)V
    .locals 0
    .param p1, "timeZone"    # Lcom/google/gdata/data/calendar/TimeZoneProperty;

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/calendar/CalendarEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 178
    return-void
.end method

.method public setTimesCleaned(Lcom/google/gdata/data/calendar/TimesCleanedProperty;)V
    .locals 0
    .param p1, "timesCleaned"    # Lcom/google/gdata/data/calendar/TimesCleanedProperty;

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/calendar/CalendarEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 192
    return-void
.end method
