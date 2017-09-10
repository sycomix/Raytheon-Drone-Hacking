.class Lcom/parrot/freeflight/core/academy/MediaManager$HandlerHolder;
.super Ljava/lang/Object;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerHolder"
.end annotation


# instance fields
.field public error:Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final listener:Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public result:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$HandlerHolder;->listener:Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;

    .line 423
    return-void
.end method
