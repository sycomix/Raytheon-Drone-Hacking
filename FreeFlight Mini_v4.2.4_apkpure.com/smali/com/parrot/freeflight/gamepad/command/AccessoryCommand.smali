.class public interface abstract Lcom/parrot/freeflight/gamepad/command/AccessoryCommand;
.super Ljava/lang/Object;
.source "AccessoryCommand.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/command/Command;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/command/AccessoryCommand$AccessoryType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/parrot/freeflight/gamepad/command/Command",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final CLAW:I = 0x2

.field public static final GUN:I = 0x1

.field public static final LIGHT:I = 0x0

.field public static final UNKNOW:I = -0x1


# virtual methods
.method public abstract getAccessoryType()I
.end method
