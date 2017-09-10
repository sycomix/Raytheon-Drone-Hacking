.class Lcom/google/gdata/data/extensions/Reminder$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "Reminder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/extensions/Reminder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/extensions/Reminder;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/extensions/Reminder;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Reminder$Handler;->this$0:Lcom/google/gdata/data/extensions/Reminder;

    .line 206
    const-class v0, Lcom/google/gdata/data/extensions/Reminder;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 207
    return-void
.end method


# virtual methods
.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 215
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    const-string v1, "days"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/google/gdata/data/extensions/Reminder$Handler;->this$0:Lcom/google/gdata/data/extensions/Reminder;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/google/gdata/data/extensions/Reminder;->days:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->invalidReminderDays:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v1

    .line 225
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const-string v1, "hours"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 228
    :try_start_1
    iget-object v1, p0, Lcom/google/gdata/data/extensions/Reminder$Handler;->this$0:Lcom/google/gdata/data/extensions/Reminder;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/google/gdata/data/extensions/Reminder;->hours:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 229
    :catch_1
    move-exception v0

    .line 230
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->invalidReminderHours:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v1

    .line 234
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string v1, "minutes"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 237
    :try_start_2
    iget-object v1, p0, Lcom/google/gdata/data/extensions/Reminder$Handler;->this$0:Lcom/google/gdata/data/extensions/Reminder;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/google/gdata/data/extensions/Reminder;->minutes:Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 238
    :catch_2
    move-exception v0

    .line 239
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->invalidReminderMinutes:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v1

    .line 243
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    const-string v1, "absoluteTime"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 246
    :try_start_3
    iget-object v1, p0, Lcom/google/gdata/data/extensions/Reminder$Handler;->this$0:Lcom/google/gdata/data/extensions/Reminder;

    invoke-static {p3}, Lcom/google/gdata/data/DateTime;->parseDateTime(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;

    move-result-object v2

    iput-object v2, v1, Lcom/google/gdata/data/extensions/Reminder;->absoluteTime:Lcom/google/gdata/data/DateTime;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 247
    :catch_3
    move-exception v0

    .line 248
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->invalidReminderAbsoluteTime:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v1

    .line 252
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    const-string v1, "method"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    :try_start_4
    iget-object v1, p0, Lcom/google/gdata/data/extensions/Reminder$Handler;->this$0:Lcom/google/gdata/data/extensions/Reminder;

    invoke-static {p3}, Lcom/google/gdata/data/extensions/Reminder$Method;->fromString(Ljava/lang/String;)Lcom/google/gdata/data/extensions/Reminder$Method;

    move-result-object v2

    iput-object v2, v1, Lcom/google/gdata/data/extensions/Reminder;->method:Lcom/google/gdata/data/extensions/Reminder$Method;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 256
    :catch_4
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->invalidReminderMethod:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public processEndElement()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 267
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Reminder$Handler;->this$0:Lcom/google/gdata/data/extensions/Reminder;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/Reminder;->days:Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/gdata/data/extensions/Reminder$Handler;->this$0:Lcom/google/gdata/data/extensions/Reminder;

    iget-object v3, v3, Lcom/google/gdata/data/extensions/Reminder;->hours:Ljava/lang/Integer;

    if-nez v3, :cond_1

    move v3, v1

    :goto_1
    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/google/gdata/data/extensions/Reminder$Handler;->this$0:Lcom/google/gdata/data/extensions/Reminder;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/Reminder;->minutes:Ljava/lang/Integer;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/gdata/data/extensions/Reminder$Handler;->this$0:Lcom/google/gdata/data/extensions/Reminder;

    iget-object v3, v3, Lcom/google/gdata/data/extensions/Reminder;->absoluteTime:Lcom/google/gdata/data/DateTime;

    if-nez v3, :cond_3

    :goto_3
    add-int/2addr v0, v1

    if-le v0, v2, :cond_4

    .line 272
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->tooManyAttributes:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    :cond_0
    move v0, v2

    .line 267
    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    .line 276
    :cond_4
    invoke-super {p0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->processEndElement()V

    .line 277
    return-void
.end method
