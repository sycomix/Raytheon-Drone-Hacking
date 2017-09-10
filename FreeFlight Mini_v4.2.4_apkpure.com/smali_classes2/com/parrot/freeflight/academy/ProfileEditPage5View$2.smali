.class Lcom/parrot/freeflight/academy/ProfileEditPage5View$2;
.super Ljava/lang/Object;
.source "ProfileEditPage5View.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/ProfileEditPage5View;-><init>(Lcom/parrot/freeflight/academy/ProfileEditActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/ProfileEditPage5View;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/ProfileEditPage5View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/ProfileEditPage5View;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View$2;->this$0:Lcom/parrot/freeflight/academy/ProfileEditPage5View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View$2;->this$0:Lcom/parrot/freeflight/academy/ProfileEditPage5View;

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->onGoogleClick()V

    .line 62
    return-void
.end method
