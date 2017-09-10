.class Lcom/parrot/freeflight/academy/ProfileEditPage2View$1$1;
.super Ljava/lang/Object;
.source "ProfileEditPage2View.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/ProfileEditPage2View$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/academy/ProfileEditPage2View$1;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/ProfileEditPage2View$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/academy/ProfileEditPage2View$1;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View$1$1;->this$1:Lcom/parrot/freeflight/academy/ProfileEditPage2View$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 80
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 81
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 82
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 83
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 85
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View$1$1;->this$1:Lcom/parrot/freeflight/academy/ProfileEditPage2View$1;

    iget-object v1, v1, Lcom/parrot/freeflight/academy/ProfileEditPage2View$1;->this$0:Lcom/parrot/freeflight/academy/ProfileEditPage2View;

    invoke-static {v1}, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->access$100(Lcom/parrot/freeflight/academy/ProfileEditPage2View;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View$1$1;->this$1:Lcom/parrot/freeflight/academy/ProfileEditPage2View$1;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/ProfileEditPage2View$1;->this$0:Lcom/parrot/freeflight/academy/ProfileEditPage2View;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->access$000(Lcom/parrot/freeflight/academy/ProfileEditPage2View;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method
