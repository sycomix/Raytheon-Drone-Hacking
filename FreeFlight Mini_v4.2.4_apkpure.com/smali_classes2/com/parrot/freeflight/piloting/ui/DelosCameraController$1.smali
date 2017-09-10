.class Lcom/parrot/freeflight/piloting/ui/DelosCameraController$1;
.super Ljava/lang/Object;
.source "DelosCameraController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/DelosCameraController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/util/PermissionChecker;Landroid/view/TextureView;Landroid/widget/ImageButton;Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/preference/JoystickState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$000(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)V

    .line 141
    return-void
.end method
