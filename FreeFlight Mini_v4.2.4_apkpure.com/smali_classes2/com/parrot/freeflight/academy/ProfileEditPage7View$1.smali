.class Lcom/parrot/freeflight/academy/ProfileEditPage7View$1;
.super Ljava/lang/Object;
.source "ProfileEditPage7View.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/ProfileEditPage7View;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/academy/ProfileEditController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/ProfileEditPage7View;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/ProfileEditPage7View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/ProfileEditPage7View;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage7View$1;->this$0:Lcom/parrot/freeflight/academy/ProfileEditPage7View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage7View$1;->this$0:Lcom/parrot/freeflight/academy/ProfileEditPage7View;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileEditPage7View;->access$000(Lcom/parrot/freeflight/academy/ProfileEditPage7View;)Lcom/parrot/freeflight/academy/ProfileEditController;

    move-result-object v0

    const v1, 0x7f080484

    const v2, 0x7f080486

    const/4 v5, 0x2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/academy/ProfileEditController;->showDialog(IIZZI)V

    .line 44
    return-void
.end method
