.class Lcom/parrot/freeflight/core/academy/AcademyManager$8;
.super Ljava/lang/Object;
.source "AcademyManager.java"

# interfaces
.implements Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousCreationProfileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/AcademyManager;->createProfile(Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

.field final synthetic val$holder:Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$8;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$8;->val$holder:Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnonymousCreationProfileResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;)V
    .locals 4
    .param p1, "error"    # Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .param p2, "model"    # Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;

    .prologue
    .line 519
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq p1, v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$8;->val$holder:Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    iput-object p1, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 521
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$8;->val$holder:Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$8;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v2, p1, v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$2500(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyErrors;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->result:Ljava/lang/Object;

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$8;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1700(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$8;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1700(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$8;->val$holder:Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 524
    return-void

    .line 521
    :cond_1
    invoke-virtual {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v0

    goto :goto_0
.end method
