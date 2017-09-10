.class public interface abstract Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;
.super Ljava/lang/Object;
.source "AnimationControllerListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener$ExpansionDirection;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x1

.field public static final VERTICAL:I


# virtual methods
.method public abstract onCurrentAnimationChange(I)V
.end method

.method public abstract onMenuClosing()V
.end method

.method public abstract onMenuOpening(I)V
.end method

.method public abstract onStartAnimation(I)V
.end method
