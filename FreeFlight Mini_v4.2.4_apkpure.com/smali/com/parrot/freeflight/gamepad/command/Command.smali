.class public interface abstract Lcom/parrot/freeflight/gamepad/command/Command;
.super Ljava/lang/Object;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/command/Command$Type;
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
.field public static final APP_START_INDEX:I = 0x12c

.field public static final BEBOP_START_INDEX:I = 0x1f4

.field public static final CAMERA_EXPOSITION_INCREMENT:F = 0.5f

.field public static final CLAW_ACCESSORY_START_INDEX:I = 0x320

.field public static final FIXED_WING_START_INDEX:I = 0x258

.field public static final FPV_START_INDEX:I = 0x190

.field public static final GUN_ACCESSORY_START_INDEX:I = 0x2ee

.field public static final LIGHT_ACCESSORY_START_INDEX:I = 0x2bc

.field public static final NO_INTERVAL:I = 0x0

.field public static final REPEATING_NAVIGATION_INTERVAL_MS:I = 0x12c

.field public static final REPEATING_TILT_INTERVAL_MS:I = 0x64

.field public static final TYPE_COMMON:I = 0x2

.field public static final TYPE_NAVIGATION:I = 0x0

.field public static final TYPE_PILOTING:I = 0x1

.field public static final UI_CONTROLLER_START_INDEX:I = 0xc8


# virtual methods
.method public abstract execute(Ljava/lang/Object;F)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation
.end method

.method public abstract getId()I
.end method

.method public abstract getRepeatingIntervalInMs()I
.end method

.method public abstract getResId()I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end method

.method public abstract getType()I
.end method

.method public abstract isAnalog()Z
.end method

.method public abstract needRepetition()Z
.end method

.method public abstract shouldAccelerate()Z
.end method
