.class public Lcom/parrot/freeflight/gamepad/command/CommandFilter;
.super Ljava/lang/Object;
.source "CommandFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/command/CommandFilter$AccessoryFilter;,
        Lcom/parrot/freeflight/gamepad/command/CommandFilter$SettingsFilter;
    }
.end annotation


# static fields
.field public static final ACCESSORY_FILTER:I = 0x1

.field public static final FILTER_IN_SETTINGS:I = 0x0

.field public static final FILTER_NONE:I = 0x2

.field public static final FILTER_NOT_IN_SETTINGS:I = 0x1

.field private static final NOT_IN_SETTINGS_COMMANDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/parrot/freeflight/gamepad/command/Command;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_ACCESSORY_FILTER:I

.field private static final SKYCONTROLLER_2_NOT_IN_SETTINGS_COMMANDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/parrot/freeflight/gamepad/command/Command;",
            ">;"
        }
    .end annotation
.end field

.field private static final TINOS_NOT_IN_SETTINGS_COMMANDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/parrot/freeflight/gamepad/command/Command;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 34
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/parrot/freeflight/gamepad/command/AppCommand;

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_BACK:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    aput-object v2, v1, v4

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_VALIDATE:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    aput-object v2, v1, v5

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_LEFT:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    aput-object v2, v1, v6

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_RIGHT:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    aput-object v2, v1, v7

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_UP:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_DOWN:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    aput-object v3, v1, v2

    .line 35
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->SKYCONTROLLER_2_NOT_IN_SETTINGS_COMMANDS:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/parrot/freeflight/gamepad/command/AppCommand;

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_BACK:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    aput-object v2, v1, v4

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_VALIDATE:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    aput-object v2, v1, v5

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_LEFT:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    aput-object v2, v1, v6

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_RIGHT:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    aput-object v2, v1, v7

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_UP:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_DOWN:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    aput-object v3, v1, v2

    .line 39
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->TINOS_NOT_IN_SETTINGS_COMMANDS:Ljava/util/Set;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v8, [Lcom/parrot/freeflight/gamepad/command/AppCommand;

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_LEFT:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    aput-object v2, v1, v4

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_RIGHT:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    aput-object v2, v1, v5

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_UP:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    aput-object v2, v1, v6

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_DOWN:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    aput-object v2, v1, v7

    .line 43
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->NOT_IN_SETTINGS_COMMANDS:Ljava/util/Set;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterByAccessory(Lcom/parrot/freeflight/gamepad/command/Command;I)Z
    .locals 2
    .param p0, "command"    # Lcom/parrot/freeflight/gamepad/command/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "accessoryId"    # I

    .prologue
    const/4 v0, 0x1

    .line 50
    instance-of v1, p0, Lcom/parrot/freeflight/gamepad/command/AccessoryCommand;

    if-eqz v1, :cond_0

    .line 51
    check-cast p0, Lcom/parrot/freeflight/gamepad/command/AccessoryCommand;

    .end local p0    # "command":Lcom/parrot/freeflight/gamepad/command/Command;
    invoke-interface {p0}, Lcom/parrot/freeflight/gamepad/command/AccessoryCommand;->getAccessoryType()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static filterByCommandType(Lcom/parrot/freeflight/gamepad/command/Command;I)Z
    .locals 2
    .param p0, "command"    # Lcom/parrot/freeflight/gamepad/command/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "commandType"    # I

    .prologue
    const/4 v1, 0x2

    .line 46
    if-eq p1, v1, :cond_0

    invoke-interface {p0}, Lcom/parrot/freeflight/gamepad/command/Command;->getType()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-interface {p0}, Lcom/parrot/freeflight/gamepad/command/Command;->getType()I

    move-result v0

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z
    .locals 4
    .param p0, "command"    # Lcom/parrot/freeflight/gamepad/command/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "settingsFilter"    # I
    .param p2, "gamePadType"    # I

    .prologue
    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 57
    packed-switch p2, :pswitch_data_0

    .line 63
    :pswitch_0
    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_6

    move v0, v1

    :goto_0
    sget-object v3, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->NOT_IN_SETTINGS_COMMANDS:Ljava/util/Set;

    invoke-interface {v3, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-ne v0, v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    :goto_1
    return v2

    .line 59
    :pswitch_1
    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_3

    move v0, v1

    :goto_2
    sget-object v3, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->SKYCONTROLLER_2_NOT_IN_SETTINGS_COMMANDS:Ljava/util/Set;

    invoke-interface {v3, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-ne v0, v3, :cond_1

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    .line 61
    :pswitch_2
    if-eq p1, v0, :cond_4

    if-ne p1, v1, :cond_5

    move v0, v1

    :goto_3
    sget-object v3, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->TINOS_NOT_IN_SETTINGS_COMMANDS:Ljava/util/Set;

    invoke-interface {v3, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-ne v0, v3, :cond_1

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v2

    .line 63
    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
