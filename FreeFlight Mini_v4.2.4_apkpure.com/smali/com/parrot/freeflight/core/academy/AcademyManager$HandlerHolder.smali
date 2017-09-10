.class Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
.super Ljava/lang/Object;
.source "AcademyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/AcademyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerHolder"
.end annotation


# instance fields
.field public error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final listener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public requestId:I

.field public result:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1293
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->requestId:I

    .line 1296
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->listener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    .line 1297
    return-void
.end method
