.class public Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
.super Ljava/lang/Object;
.source "GamePadAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/preferences/GamePadAction$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ANALOGIC_WITH_JOY:I = 0x3

.field public static final ANALOGIC_WITH_TRIGGER:I = 0x4

.field public static final LOGIC:I = 0x0

.field public static final LOGIC_WITH_JOY:I = 0x1

.field public static final LOGIC_WITH_TRIGGER:I = 0x2

.field public static final NOT_SUPPORTED:I = 0x5


# instance fields
.field public cmdParam:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final command:Lcom/parrot/freeflight/gamepad/command/Command;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/gamepad/command/Command",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lcom/parrot/freeflight/gamepad/command/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "firstInput"    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "secondInput"    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/gamepad/command/Command",
            "<TT;>;",
            "Lcom/parrot/freeflight/gamepad/GamePad$Input;",
            "Lcom/parrot/freeflight/gamepad/GamePad$Input;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;, "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction<TT;>;"
    .local p1, "command":Lcom/parrot/freeflight/gamepad/command/Command;, "Lcom/parrot/freeflight/gamepad/command/Command<TT;>;"
    .local p4, "cmdParam":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    .line 41
    iput-object p2, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 42
    iput-object p3, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 43
    iput-object p4, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->cmdParam:Ljava/lang/Object;

    .line 45
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->getType()I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->type:I

    .line 46
    return-void
.end method

.method private getType()I
    .locals 7

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;, "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction<TT;>;"
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v6, 0x3

    const/4 v3, 0x2

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "typeRet":I
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->getInputCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 64
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v4, v4, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    packed-switch v4, :pswitch_data_0

    .line 116
    :goto_0
    return v0

    .line 66
    :pswitch_0
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    invoke-interface {v1}, Lcom/parrot/freeflight/gamepad/command/Command;->isAnalog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const/4 v0, 0x3

    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    invoke-interface {v1}, Lcom/parrot/freeflight/gamepad/command/Command;->getType()I

    move-result v1

    if-nez v1, :cond_1

    .line 69
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, 0x5

    .line 74
    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    invoke-interface {v3}, Lcom/parrot/freeflight/gamepad/command/Command;->isAnalog()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 77
    :goto_1
    goto :goto_0

    :cond_2
    move v0, v2

    .line 76
    goto :goto_1

    .line 79
    :pswitch_2
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    invoke-interface {v1}, Lcom/parrot/freeflight/gamepad/command/Command;->isAnalog()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x4

    .line 80
    :goto_2
    goto :goto_0

    :cond_3
    move v0, v3

    .line 79
    goto :goto_2

    .line 82
    :pswitch_3
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    invoke-interface {v3}, Lcom/parrot/freeflight/gamepad/command/Command;->isAnalog()Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 83
    :goto_3
    goto :goto_0

    :cond_4
    move v0, v2

    .line 82
    goto :goto_3

    .line 88
    :cond_5
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    invoke-interface {v1}, Lcom/parrot/freeflight/gamepad/command/Command;->isAnalog()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 90
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v1, v1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v1, v1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    if-ne v1, v3, :cond_6

    .line 91
    const/4 v0, 0x5

    goto :goto_0

    .line 93
    :cond_6
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v1, v1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    if-eq v1, v3, :cond_7

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v1, v1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    if-ne v1, v3, :cond_8

    .line 94
    :cond_7
    const/4 v0, 0x3

    goto :goto_0

    .line 95
    :cond_8
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v1, v1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    if-ne v1, v6, :cond_9

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v1, v1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    if-ne v1, v6, :cond_9

    .line 96
    const/4 v0, 0x5

    goto :goto_0

    .line 97
    :cond_9
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v1, v1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    if-eq v1, v6, :cond_a

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v1, v1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    if-ne v1, v6, :cond_b

    .line 98
    :cond_a
    const/4 v0, 0x4

    goto :goto_0

    .line 100
    :cond_b
    const/4 v0, 0x5

    goto :goto_0

    .line 104
    :cond_c
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v1, v1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    if-ne v1, v3, :cond_d

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v1, v1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    if-ne v1, v3, :cond_d

    .line 105
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 107
    :cond_d
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v1, v1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    if-eq v1, v3, :cond_e

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v1, v1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    if-ne v1, v3, :cond_f

    .line 108
    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 109
    :cond_f
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v1, v1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    if-eq v1, v6, :cond_10

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v1, v1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    if-ne v1, v6, :cond_11

    .line 110
    :cond_10
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 112
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public contain(Lcom/parrot/freeflight/gamepad/GamePad$Input;)Z
    .locals 1
    .param p1, "input"    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    .local p0, "this":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;, "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction<TT;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;, "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 130
    :cond_0
    :goto_0
    return v2

    .line 122
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 124
    check-cast v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .line 126
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;, "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction<*>;"
    iget v3, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->type:I

    iget v4, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->type:I

    if-ne v3, v4, :cond_0

    .line 127
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    iget-object v4, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget-object v4, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/gamepad/GamePad$Input;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget-object v4, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/gamepad/GamePad$Input;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    :cond_2
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->cmdParam:Ljava/lang/Object;

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->cmdParam:Ljava/lang/Object;

    iget-object v2, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->cmdParam:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_3
    :goto_1
    move v2, v1

    goto :goto_0

    .line 129
    :cond_4
    iget-object v3, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 130
    :cond_5
    iget-object v3, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->cmdParam:Ljava/lang/Object;

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_1
.end method

.method public execute(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 49
    .local p0, "this":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;, "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction<TT;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->cmdParam:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->cmdParam:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/parrot/freeflight/gamepad/command/Command;->execute(Ljava/lang/Object;F)V

    .line 50
    :cond_0
    return-void
.end method

.method public getInputCount()I
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;, "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction<TT;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;, "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction<TT;>;"
    const/4 v2, 0x0

    .line 136
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 137
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v3}, Lcom/parrot/freeflight/gamepad/GamePad$Input;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 138
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/GamePad$Input;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 139
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->type:I

    add-int v0, v1, v3

    .line 140
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->cmdParam:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->cmdParam:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 141
    return v0

    :cond_1
    move v1, v2

    .line 138
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    .local p0, "this":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;, "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->getInputCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " firstInput "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " secondInput "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
