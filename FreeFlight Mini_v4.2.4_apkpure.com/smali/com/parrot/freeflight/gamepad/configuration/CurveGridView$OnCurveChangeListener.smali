.class public interface abstract Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$OnCurveChangeListener;
.super Ljava/lang/Object;
.source "CurveGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCurveChangeListener"
.end annotation


# virtual methods
.method public abstract onCurveChange(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;)V
    .param p1    # Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
