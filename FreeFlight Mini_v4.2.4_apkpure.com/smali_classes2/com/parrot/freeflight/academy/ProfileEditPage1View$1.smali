.class Lcom/parrot/freeflight/academy/ProfileEditPage1View$1;
.super Ljava/lang/Object;
.source "ProfileEditPage1View.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/ProfileEditPage1View;-><init>(Lcom/parrot/freeflight/academy/ProfileEditActivity;Lcom/parrot/freeflight/academy/ProfileEditController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/ProfileEditPage1View;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/ProfileEditPage1View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/ProfileEditPage1View;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View$1;->this$0:Lcom/parrot/freeflight/academy/ProfileEditPage1View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 71
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View$1;->this$0:Lcom/parrot/freeflight/academy/ProfileEditPage1View;

    invoke-static {v1}, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->access$000(Lcom/parrot/freeflight/academy/ProfileEditPage1View;)Lcom/parrot/freeflight/academy/ProfileEditActivity;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View$1;->this$0:Lcom/parrot/freeflight/academy/ProfileEditPage1View;

    invoke-virtual {v1, v0, v2, v3}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->startActivityForResult(Landroid/content/Intent;ILcom/parrot/freeflight/academy/ProfileEditActivity$ActivityResultListener;)V

    .line 72
    return-void
.end method
