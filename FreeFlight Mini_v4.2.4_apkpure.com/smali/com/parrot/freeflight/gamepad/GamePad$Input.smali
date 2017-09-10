.class public Lcom/parrot/freeflight/gamepad/GamePad$Input;
.super Ljava/lang/Object;
.source "GamePad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/GamePad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Input"
.end annotation


# static fields
.field public static final BUTTON_1_NAME:Ljava/lang/String; = "1"

.field public static final BUTTON_2_NAME:Ljava/lang/String; = "2"

.field public static final BUTTON_3_NAME:Ljava/lang/String; = "3"

.field public static final BUTTON_4_NAME:Ljava/lang/String; = "4"

.field public static final BUTTON_5_NAME:Ljava/lang/String; = "5"

.field public static final BUTTON_6_NAME:Ljava/lang/String; = "6"

.field public static final BUTTON_A_NAME:Ljava/lang/String; = "A"

.field public static final BUTTON_B_NAME:Ljava/lang/String; = "B"

.field public static final BUTTON_L1_NAME:Ljava/lang/String; = "L1"

.field public static final BUTTON_L2_NAME:Ljava/lang/String; = "L2"

.field public static final BUTTON_R1_NAME:Ljava/lang/String; = "R1"

.field public static final BUTTON_R2_NAME:Ljava/lang/String; = "R2"

.field public static final BUTTON_X_NAME:Ljava/lang/String; = "X"

.field public static final BUTTON_Y_NAME:Ljava/lang/String; = "Y"

.field public static final BUTTON_Z_NAME:Ljava/lang/String; = "Z"

.field public static final DPAD_NAME:Ljava/lang/String; = "DPAD"

.field public static final LEFT_JOYSTICK_NAME:Ljava/lang/String; = "J1"

.field public static final LEFT_TRIGGER_NAME:Ljava/lang/String; = "L2"

.field public static final RIGHT_JOYSTICK_NAME:Ljava/lang/String; = "J2"

.field public static final RIGHT_TRIGGER_NAME:Ljava/lang/String; = "R2"

.field public static final TOP_LEFT_JOYSTICK_NAME:Ljava/lang/String; = "J3"

.field public static final TOP_RIGHT_JOYSTICK_NAME:Ljava/lang/String; = "J4"


# instance fields
.field public final controlName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final controlType:I

.field public final direction:I

.field public final id:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1, "controlName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "controlType"    # I
    .param p3, "direction"    # I
    .param p4, "id"    # I

    .prologue
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    .line 487
    iput p2, p0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    .line 488
    iput p3, p0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->direction:I

    .line 489
    iput p4, p0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->id:I

    .line 490
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 494
    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    .line 502
    :cond_0
    :goto_0
    return v1

    .line 495
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 497
    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 499
    .local v0, "input":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    iget v2, p0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    iget v3, v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    if-ne v2, v3, :cond_0

    .line 500
    iget v2, p0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->direction:I

    iget v3, v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->direction:I

    if-ne v2, v3, :cond_0

    .line 501
    iget v2, p0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->id:I

    iget v3, v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->id:I

    if-ne v2, v3, :cond_0

    .line 502
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    iget-object v2, v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 508
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 509
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    add-int v0, v1, v2

    .line 510
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->direction:I

    add-int v0, v1, v2

    .line 511
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->id:I

    add-int v0, v1, v2

    .line 512
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 519
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    packed-switch v1, :pswitch_data_0

    .line 541
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 521
    :pswitch_0
    const-string v1, " Button"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    const-string v1, " id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    iget v1, p0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 526
    :pswitch_1
    const-string v1, " Dpad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    const-string v1, " d:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    iget v1, p0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->direction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 531
    :pswitch_2
    const-string v1, " Joy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    const-string v1, " d:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    iget v1, p0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->direction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 536
    :pswitch_3
    const-string v1, " Trigger"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    const-string v1, " d:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    iget v1, p0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->direction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
