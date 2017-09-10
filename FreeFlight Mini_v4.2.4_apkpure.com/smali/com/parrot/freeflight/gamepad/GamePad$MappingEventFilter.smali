.class public interface abstract Lcom/parrot/freeflight/gamepad/GamePad$MappingEventFilter;
.super Ljava/lang/Object;
.source "GamePad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/GamePad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MappingEventFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/GamePad$MappingEventFilter$FilterType;
    }
.end annotation


# static fields
.field public static final ANALOGIC_FILTER:I = 0x2

.field public static final LOGIC_FILTER:I = 0x1

.field public static final NO_FILTER:I


# virtual methods
.method public abstract setEventFilter(I)V
.end method
