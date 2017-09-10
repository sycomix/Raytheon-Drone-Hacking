.class public Ljavax/mail/internet/MimeUtility;
.super Ljava/lang/Object;
.source "MimeUtility.java"


# static fields
.field public static final ALL:I = -0x1

.field static final ALL_ASCII:I = 0x1

.field static final MOSTLY_ASCII:I = 0x2

.field static final MOSTLY_NONASCII:I = 0x3

.field static class$javax$mail$internet$MimeUtility:Ljava/lang/Class;

.field private static decodeStrict:Z

.field private static defaultJavaCharset:Ljava/lang/String;

.field private static defaultMIMECharset:Ljava/lang/String;

.field private static encodeEolStrict:Z

.field private static foldEncodedWords:Z

.field private static foldText:Z

.field private static java2mime:Ljava/util/Hashtable;

.field private static mime2java:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 122
    sput-boolean v5, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z

    .line 123
    sput-boolean v4, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z

    .line 124
    sput-boolean v4, Ljavax/mail/internet/MimeUtility;->foldEncodedWords:Z

    .line 125
    sput-boolean v5, Ljavax/mail/internet/MimeUtility;->foldText:Z

    .line 129
    :try_start_0
    const-string v6, "mail.mime.decodetext.strict"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v6, "false"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_0
    move v6, v5

    :goto_0
    sput-boolean v6, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z

    .line 132
    const-string v6, "mail.mime.encodeeol.strict"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    if-eqz v3, :cond_7

    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v5

    :goto_1
    sput-boolean v6, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z

    .line 135
    const-string v6, "mail.mime.foldencodedwords"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    if-eqz v3, :cond_8

    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    move v6, v5

    :goto_2
    sput-boolean v6, Ljavax/mail/internet/MimeUtility;->foldEncodedWords:Z

    .line 138
    const-string v6, "mail.mime.foldtext"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    if-eqz v3, :cond_1

    const-string v6, "false"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    move v4, v5

    :cond_2
    sput-boolean v4, Ljavax/mail/internet/MimeUtility;->foldText:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1149
    :goto_3
    new-instance v4, Ljava/util/Hashtable;

    const/16 v5, 0x28

    invoke-direct {v4, v5}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    .line 1150
    new-instance v4, Ljava/util/Hashtable;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v4, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    .line 1155
    :try_start_1
    sget-object v4, Ljavax/mail/internet/MimeUtility;->class$javax$mail$internet$MimeUtility:Ljava/lang/Class;

    if-nez v4, :cond_9

    const-string v4, "javax.mail.internet.MimeUtility"

    invoke-static {v4}, Ljavax/mail/internet/MimeUtility;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Ljavax/mail/internet/MimeUtility;->class$javax$mail$internet$MimeUtility:Ljava/lang/Class;

    :goto_4
    const-string v5, "/META-INF/javamail.charset.map"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1159
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_3

    .line 1161
    :try_start_2
    new-instance v2, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v2, v1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1164
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :try_start_3
    move-object v0, v2

    check-cast v0, Lcom/sun/mail/util/LineInputStream;

    move-object v4, v0

    sget-object v5, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    invoke-static {v4, v5}, Ljavax/mail/internet/MimeUtility;->loadMappings(Lcom/sun/mail/util/LineInputStream;Ljava/util/Hashtable;)V

    .line 1167
    move-object v0, v2

    check-cast v0, Lcom/sun/mail/util/LineInputStream;

    move-object v4, v0

    sget-object v5, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    invoke-static {v4, v5}, Ljavax/mail/internet/MimeUtility;->loadMappings(Lcom/sun/mail/util/LineInputStream;Ljava/util/Hashtable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1170
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v1, v2

    .line 1181
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_3
    :goto_5
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1182
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "8859_1"

    const-string v6, "ISO-8859-1"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859_1"

    const-string v6, "ISO-8859-1"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859-1"

    const-string v6, "ISO-8859-1"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "8859_2"

    const-string v6, "ISO-8859-2"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859_2"

    const-string v6, "ISO-8859-2"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859-2"

    const-string v6, "ISO-8859-2"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "8859_3"

    const-string v6, "ISO-8859-3"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859_3"

    const-string v6, "ISO-8859-3"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859-3"

    const-string v6, "ISO-8859-3"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "8859_4"

    const-string v6, "ISO-8859-4"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859_4"

    const-string v6, "ISO-8859-4"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859-4"

    const-string v6, "ISO-8859-4"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "8859_5"

    const-string v6, "ISO-8859-5"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859_5"

    const-string v6, "ISO-8859-5"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859-5"

    const-string v6, "ISO-8859-5"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "8859_6"

    const-string v6, "ISO-8859-6"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859_6"

    const-string v6, "ISO-8859-6"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859-6"

    const-string v6, "ISO-8859-6"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "8859_7"

    const-string v6, "ISO-8859-7"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859_7"

    const-string v6, "ISO-8859-7"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859-7"

    const-string v6, "ISO-8859-7"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "8859_8"

    const-string v6, "ISO-8859-8"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859_8"

    const-string v6, "ISO-8859-8"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859-8"

    const-string v6, "ISO-8859-8"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "8859_9"

    const-string v6, "ISO-8859-9"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859_9"

    const-string v6, "ISO-8859-9"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859-9"

    const-string v6, "ISO-8859-9"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "sjis"

    const-string v6, "Shift_JIS"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "jis"

    const-string v6, "ISO-2022-JP"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso2022jp"

    const-string v6, "ISO-2022-JP"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "euc_jp"

    const-string v6, "euc-jp"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "koi8_r"

    const-string v6, "koi8-r"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "euc_cn"

    const-string v6, "euc-cn"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "euc_tw"

    const-string v6, "euc-tw"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "euc_kr"

    const-string v6, "euc-kr"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    :cond_4
    sget-object v4, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1228
    sget-object v4, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v5, "iso-2022-cn"

    const-string v6, "ISO2022CN"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    sget-object v4, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v5, "iso-2022-kr"

    const-string v6, "ISO2022KR"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    sget-object v4, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v5, "utf-8"

    const-string v6, "UTF8"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    sget-object v4, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v5, "utf8"

    const-string v6, "UTF8"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    sget-object v4, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v5, "ja_jp.iso2022-7"

    const-string v6, "ISO2022JP"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    sget-object v4, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v5, "ja_jp.eucjp"

    const-string v6, "EUCJIS"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    sget-object v4, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v5, "euc-kr"

    const-string v6, "KSC5601"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    sget-object v4, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v5, "euckr"

    const-string v6, "KSC5601"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    sget-object v4, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v5, "us-ascii"

    const-string v6, "ISO-8859-1"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    sget-object v4, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v5, "x-us-ascii"

    const-string v6, "ISO-8859-1"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    :cond_5
    return-void

    :cond_6
    move v6, v4

    .line 131
    goto/16 :goto_0

    :cond_7
    move v6, v4

    .line 134
    goto/16 :goto_1

    :cond_8
    move v6, v4

    .line 137
    goto/16 :goto_2

    .line 1155
    :cond_9
    :try_start_5
    sget-object v4, Ljavax/mail/internet/MimeUtility;->class$javax$mail$internet$MimeUtility:Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_4

    .line 1171
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 1174
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto/16 :goto_5

    .line 1169
    :catchall_0
    move-exception v4

    .line 1170
    :goto_6
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1174
    :goto_7
    :try_start_7
    throw v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 1176
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v4

    goto/16 :goto_5

    .line 1171
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v5

    goto :goto_7

    .line 1169
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_6

    .line 141
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v4

    goto/16 :goto_3
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAscii(Ljava/io/InputStream;IZ)I
    .locals 14
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "max"    # I
    .param p2, "breakOnNonAscii"    # Z

    .prologue
    .line 1356
    const/4 v0, 0x0

    .local v0, "ascii":I
    const/4 v12, 0x0

    .line 1358
    .local v12, "non_ascii":I
    const/16 v3, 0x1000

    .line 1359
    .local v3, "block":I
    const/4 v10, 0x0

    .line 1360
    .local v10, "linelen":I
    const/4 v11, 0x0

    .local v11, "longLine":Z
    const/4 v2, 0x0

    .line 1361
    .local v2, "badEOL":Z
    sget-boolean v13, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z

    if-eqz v13, :cond_2

    if-eqz p2, :cond_2

    const/4 v5, 0x1

    .line 1362
    .local v5, "checkEOL":Z
    :goto_0
    const/4 v4, 0x0

    .line 1363
    .local v4, "buf":[B
    if-eqz p1, :cond_0

    .line 1364
    const/4 v13, -0x1

    if-ne p1, v13, :cond_3

    const/16 v3, 0x1000

    .line 1365
    :goto_1
    new-array v4, v3, [B

    .line 1367
    :cond_0
    :goto_2
    if-eqz p1, :cond_1

    .line 1369
    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {p0, v4, v13, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .local v9, "len":I
    const/4 v13, -0x1

    if-ne v9, v13, :cond_4

    .line 1405
    .end local v9    # "len":I
    :cond_1
    :goto_3
    if-nez p1, :cond_e

    if-eqz p2, :cond_e

    .line 1412
    const/4 v13, 0x3

    .line 1429
    :goto_4
    return v13

    .line 1361
    .end local v4    # "buf":[B
    .end local v5    # "checkEOL":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 1364
    .restart local v4    # "buf":[B
    .restart local v5    # "checkEOL":Z
    :cond_3
    const/16 v13, 0x1000

    invoke-static {p1, v13}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_1

    .line 1371
    .restart local v9    # "len":I
    :cond_4
    const/4 v8, 0x0

    .line 1372
    .local v8, "lastb":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5
    if-ge v6, v9, :cond_d

    .line 1377
    :try_start_1
    aget-byte v13, v4, v6

    and-int/lit16 v1, v13, 0xff

    .line 1378
    .local v1, "b":I
    if-eqz v5, :cond_7

    const/16 v13, 0xd

    if-ne v8, v13, :cond_5

    const/16 v13, 0xa

    if-ne v1, v13, :cond_6

    :cond_5
    const/16 v13, 0xd

    if-eq v8, v13, :cond_7

    const/16 v13, 0xa

    if-ne v1, v13, :cond_7

    .line 1381
    :cond_6
    const/4 v2, 0x1

    .line 1382
    :cond_7
    const/16 v13, 0xd

    if-eq v1, v13, :cond_8

    const/16 v13, 0xa

    if-ne v1, v13, :cond_a

    .line 1383
    :cond_8
    const/4 v10, 0x0

    .line 1389
    :cond_9
    :goto_6
    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->nonascii(I)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v13

    if-eqz v13, :cond_c

    .line 1390
    if-eqz p2, :cond_b

    .line 1391
    const/4 v13, 0x3

    goto :goto_4

    .line 1385
    :cond_a
    add-int/lit8 v10, v10, 0x1

    .line 1386
    const/16 v13, 0x3e6

    if-le v10, v13, :cond_9

    .line 1387
    const/4 v11, 0x1

    goto :goto_6

    .line 1393
    :cond_b
    add-int/lit8 v12, v12, 0x1

    .line 1396
    :goto_7
    move v8, v1

    .line 1372
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1395
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1398
    .end local v1    # "b":I
    .end local v6    # "i":I
    .end local v8    # "lastb":I
    .end local v9    # "len":I
    :catch_0
    move-exception v7

    .line 1399
    .local v7, "ioex":Ljava/io/IOException;
    goto :goto_3

    .line 1401
    .end local v7    # "ioex":Ljava/io/IOException;
    .restart local v6    # "i":I
    .restart local v8    # "lastb":I
    .restart local v9    # "len":I
    :cond_d
    const/4 v13, -0x1

    if-eq p1, v13, :cond_0

    .line 1402
    sub-int/2addr p1, v9

    goto :goto_2

    .line 1414
    .end local v6    # "i":I
    .end local v8    # "lastb":I
    .end local v9    # "len":I
    :cond_e
    if-nez v12, :cond_11

    .line 1419
    if-eqz v2, :cond_f

    .line 1420
    const/4 v13, 0x3

    goto :goto_4

    .line 1422
    :cond_f
    if-eqz v11, :cond_10

    .line 1423
    const/4 v13, 0x2

    goto :goto_4

    .line 1425
    :cond_10
    const/4 v13, 0x1

    goto :goto_4

    .line 1427
    :cond_11
    if-le v0, v12, :cond_12

    .line 1428
    const/4 v13, 0x2

    goto :goto_4

    .line 1429
    :cond_12
    const/4 v13, 0x3

    goto :goto_4
.end method

.method static checkAscii(Ljava/lang/String;)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1285
    const/4 v0, 0x0

    .local v0, "ascii":I
    const/4 v3, 0x0

    .line 1286
    .local v3, "non_ascii":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1288
    .local v2, "l":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1289
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljavax/mail/internet/MimeUtility;->nonascii(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1290
    add-int/lit8 v3, v3, 0x1

    .line 1288
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1292
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1295
    :cond_1
    if-nez v3, :cond_2

    .line 1296
    const/4 v4, 0x1

    .line 1300
    :goto_2
    return v4

    .line 1297
    :cond_2
    if-le v0, v3, :cond_3

    .line 1298
    const/4 v4, 0x2

    goto :goto_2

    .line 1300
    :cond_3
    const/4 v4, 0x3

    goto :goto_2
.end method

.method static checkAscii([B)I
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 1314
    const/4 v0, 0x0

    .local v0, "ascii":I
    const/4 v2, 0x0

    .line 1316
    .local v2, "non_ascii":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 1320
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljavax/mail/internet/MimeUtility;->nonascii(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1321
    add-int/lit8 v2, v2, 0x1

    .line 1316
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1323
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1326
    :cond_1
    if-nez v2, :cond_2

    .line 1327
    const/4 v3, 0x1

    .line 1331
    :goto_2
    return v3

    .line 1328
    :cond_2
    if-le v0, v2, :cond_3

    .line 1329
    const/4 v3, 0x2

    goto :goto_2

    .line 1331
    :cond_3
    const/4 v3, 0x3

    goto :goto_2
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 1156
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static decode(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 291
    const-string v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    new-instance v0, Lcom/sun/mail/util/BASE64DecoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/BASE64DecoderStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    .line 302
    .end local p0    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object p0

    .line 293
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_1
    const-string v0, "quoted-printable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    new-instance v0, Lcom/sun/mail/util/QPDecoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/QPDecoderStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 295
    :cond_2
    const-string v0, "uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "x-uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "x-uue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 298
    :cond_3
    new-instance v0, Lcom/sun/mail/util/UUDecoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/UUDecoderStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 299
    :cond_4
    const-string v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "7bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "8bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unknown encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodeInnerWords(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "word"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 812
    const/4 v4, 0x0

    .line 813
    .local v4, "start":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 814
    .local v0, "buf":Ljava/lang/StringBuffer;
    :goto_0
    const-string v5, "=?"

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .local v2, "i":I
    if-ltz v2, :cond_0

    .line 815
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 816
    const-string v5, "?="

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 817
    .local v1, "end":I
    if-gez v1, :cond_1

    .line 828
    .end local v1    # "end":I
    :cond_0
    if-nez v4, :cond_2

    .line 832
    .end local p0    # "word":Ljava/lang/String;
    :goto_1
    return-object p0

    .line 819
    .restart local v1    # "end":I
    .restart local p0    # "word":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 821
    .local v3, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljavax/mail/internet/MimeUtility;->decodeWord(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 825
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 826
    add-int/lit8 v4, v1, 0x2

    .line 827
    goto :goto_0

    .line 830
    .end local v1    # "end":I
    .end local v3    # "s":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 831
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 832
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 822
    .restart local v1    # "end":I
    .restart local v3    # "s":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public static decodeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "etext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 486
    const-string v1, " \t\n\r"

    .line 498
    .local v1, "lwsp":Ljava/lang/String;
    const-string v9, "=?"

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 543
    .end local p0    # "etext":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 503
    .restart local p0    # "etext":Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/util/StringTokenizer;

    const/4 v9, 0x1

    invoke-direct {v6, p0, v1, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 504
    .local v6, "st":Ljava/util/StringTokenizer;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 505
    .local v5, "sb":Ljava/lang/StringBuffer;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 506
    .local v8, "wsb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 508
    .local v3, "prevWasEncoded":Z
    :goto_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 510
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 512
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    const/16 v9, 0x20

    if-eq v0, v9, :cond_1

    const/16 v9, 0x9

    if-eq v0, v9, :cond_1

    const/16 v9, 0xd

    if-eq v0, v9, :cond_1

    const/16 v9, 0xa

    if-ne v0, v9, :cond_2

    .line 514
    :cond_1
    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 519
    :cond_2
    :try_start_0
    invoke-static {v4}, Ljavax/mail/internet/MimeUtility;->decodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 521
    .local v7, "word":Ljava/lang/String;
    if-nez v3, :cond_3

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 525
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :cond_3
    const/4 v3, 0x1

    .line 539
    :goto_2
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_1

    .line 528
    .end local v7    # "word":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 530
    .local v2, "pex":Ljavax/mail/internet/ParseException;
    move-object v7, v4

    .line 532
    .restart local v7    # "word":Ljava/lang/String;
    sget-boolean v9, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z

    if-nez v9, :cond_4

    .line 533
    invoke-static {v7}, Ljavax/mail/internet/MimeUtility;->decodeInnerWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 535
    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 536
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 537
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 543
    .end local v0    # "c":C
    .end local v2    # "pex":Ljavax/mail/internet/ParseException;
    .end local v4    # "s":Ljava/lang/String;
    .end local v7    # "word":Ljava/lang/String;
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static decodeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p0, "eword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 722
    const-string v15, "=?"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 723
    new-instance v15, Ljavax/mail/internet/ParseException;

    invoke-direct {v15}, Ljavax/mail/internet/ParseException;-><init>()V

    throw v15

    .line 726
    :cond_0
    const/4 v12, 0x2

    .line 727
    .local v12, "start":I
    const/16 v15, 0x3f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .local v10, "pos":I
    const/4 v15, -0x1

    if-ne v10, v15, :cond_1

    .line 728
    new-instance v15, Ljavax/mail/internet/ParseException;

    invoke-direct {v15}, Ljavax/mail/internet/ParseException;-><init>()V

    throw v15

    .line 729
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 732
    .local v3, "charset":Ljava/lang/String;
    add-int/lit8 v12, v10, 0x1

    .line 733
    const/16 v15, 0x3f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    const/4 v15, -0x1

    if-ne v10, v15, :cond_2

    .line 734
    new-instance v15, Ljavax/mail/internet/ParseException;

    invoke-direct {v15}, Ljavax/mail/internet/ParseException;-><init>()V

    throw v15

    .line 735
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 738
    .local v6, "encoding":Ljava/lang/String;
    add-int/lit8 v12, v10, 0x1

    .line 739
    const-string v15, "?="

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    const/4 v15, -0x1

    if-ne v10, v15, :cond_3

    .line 740
    new-instance v15, Ljavax/mail/internet/ParseException;

    invoke-direct {v15}, Ljavax/mail/internet/ParseException;-><init>()V

    throw v15

    .line 741
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 745
    .local v14, "word":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_9

    .line 747
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-static {v14}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-direct {v1, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 752
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    const-string v15, "B"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 753
    new-instance v9, Lcom/sun/mail/util/BASE64DecoderStream;

    invoke-direct {v9, v1}, Lcom/sun/mail/util/BASE64DecoderStream;-><init>(Ljava/io/InputStream;)V

    .line 765
    .local v9, "is":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    .line 766
    .local v4, "count":I
    new-array v2, v4, [B

    .line 768
    .local v2, "bytes":[B
    const/4 v15, 0x0

    invoke-virtual {v9, v2, v15, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 772
    if-gtz v4, :cond_8

    const-string v5, ""

    .line 778
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bytes":[B
    .end local v4    # "count":I
    .end local v9    # "is":Ljava/io/InputStream;
    .local v5, "decodedWord":Ljava/lang/String;
    :goto_1
    add-int/lit8 v15, v10, 0x2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    .line 780
    add-int/lit8 v15, v10, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 781
    .local v11, "rest":Ljava/lang/String;
    sget-boolean v15, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z

    if-nez v15, :cond_4

    .line 782
    invoke-static {v11}, Ljavax/mail/internet/MimeUtility;->decodeInnerWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 783
    :cond_4
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 785
    .end local v11    # "rest":Ljava/lang/String;
    :cond_5
    return-object v5

    .line 754
    .end local v5    # "decodedWord":Ljava/lang/String;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    :cond_6
    const-string v15, "Q"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 755
    new-instance v9, Lcom/sun/mail/util/QDecoderStream;

    invoke-direct {v9, v1}, Lcom/sun/mail/util/QDecoderStream;-><init>(Ljava/io/InputStream;)V

    .restart local v9    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 757
    .end local v9    # "is":Ljava/io/InputStream;
    :cond_7
    new-instance v15, Ljava/io/UnsupportedEncodingException;

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const-string v17, "unknown encoding: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 786
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v13

    .line 789
    .local v13, "uex":Ljava/io/UnsupportedEncodingException;
    throw v13

    .line 772
    .end local v13    # "uex":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bytes":[B
    .restart local v4    # "count":I
    .restart local v9    # "is":Ljava/io/InputStream;
    :cond_8
    :try_start_1
    new-instance v5, Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v5, v2, v15, v4, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 790
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bytes":[B
    .end local v4    # "count":I
    .end local v9    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v8

    .line 792
    .local v8, "ioex":Ljava/io/IOException;
    new-instance v15, Ljavax/mail/internet/ParseException;

    invoke-direct {v15}, Ljavax/mail/internet/ParseException;-><init>()V

    throw v15

    .line 776
    .end local v8    # "ioex":Ljava/io/IOException;
    :cond_9
    :try_start_2
    const-string v5, ""
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .restart local v5    # "decodedWord":Ljava/lang/String;
    goto :goto_1

    .line 793
    .end local v5    # "decodedWord":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 801
    .local v7, "iex":Ljava/lang/IllegalArgumentException;
    new-instance v15, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v15}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw v15
.end method

.method private static doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V
    .locals 17
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "b64"    # Z
    .param p2, "jcharset"    # Ljava/lang/String;
    .param p3, "avail"    # I
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "first"    # Z
    .param p6, "encodingWord"    # Z
    .param p7, "buf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 661
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 663
    .local v10, "bytes":[B
    if-eqz p1, :cond_0

    .line 664
    invoke-static {v10}, Lcom/sun/mail/util/BEncoderStream;->encodedLength([B)I

    move-result v14

    .line 669
    .local v14, "len":I
    :goto_0
    move/from16 v0, p3

    if-le v14, v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v16

    .local v16, "size":I
    const/4 v2, 0x1

    move/from16 v0, v16

    if-le v0, v2, :cond_1

    .line 672
    const/4 v2, 0x0

    div-int/lit8 v3, v16, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v2 .. v9}, Ljavax/mail/internet/MimeUtility;->doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V

    .line 674
    div-int/lit8 v2, v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v2 .. v9}, Ljavax/mail/internet/MimeUtility;->doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V

    .line 704
    .end local v16    # "size":I
    :goto_1
    return-void

    .line 666
    .end local v14    # "len":I
    :cond_0
    move/from16 v0, p6

    invoke-static {v10, v0}, Lcom/sun/mail/util/QEncoderStream;->encodedLength([BZ)I

    move-result v14

    .restart local v14    # "len":I
    goto :goto_0

    .line 678
    :cond_1
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 680
    .local v15, "os":Ljava/io/ByteArrayOutputStream;
    if-eqz p1, :cond_3

    .line 681
    new-instance v12, Lcom/sun/mail/util/BEncoderStream;

    invoke-direct {v12, v15}, Lcom/sun/mail/util/BEncoderStream;-><init>(Ljava/io/OutputStream;)V

    .line 686
    .local v12, "eos":Ljava/io/OutputStream;
    :goto_2
    :try_start_0
    invoke-virtual {v12, v10}, Ljava/io/OutputStream;->write([B)V

    .line 687
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :goto_3
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    .line 693
    .local v11, "encodedBytes":[B
    if-nez p5, :cond_2

    .line 694
    sget-boolean v2, Ljavax/mail/internet/MimeUtility;->foldEncodedWords:Z

    if-eqz v2, :cond_4

    .line 695
    const-string v2, "\r\n "

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 699
    :cond_2
    :goto_4
    move-object/from16 v0, p7

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 700
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5
    array-length v2, v11

    if-ge v13, v2, :cond_5

    .line 701
    aget-byte v2, v11, v13

    int-to-char v2, v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 700
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 683
    .end local v11    # "encodedBytes":[B
    .end local v12    # "eos":Ljava/io/OutputStream;
    .end local v13    # "i":I
    :cond_3
    new-instance v12, Lcom/sun/mail/util/QEncoderStream;

    move/from16 v0, p6

    invoke-direct {v12, v15, v0}, Lcom/sun/mail/util/QEncoderStream;-><init>(Ljava/io/OutputStream;Z)V

    .restart local v12    # "eos":Ljava/io/OutputStream;
    goto :goto_2

    .line 697
    .restart local v11    # "encodedBytes":[B
    :cond_4
    const-string v2, " "

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 702
    .restart local v13    # "i":I
    :cond_5
    const-string v2, "?="

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 688
    .end local v11    # "encodedBytes":[B
    .end local v13    # "i":I
    :catch_0
    move-exception v2

    goto :goto_3
.end method

.method public static encode(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 3
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 320
    if-nez p1, :cond_1

    .line 333
    .end local p0    # "os":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-object p0

    .line 322
    .restart local p0    # "os":Ljava/io/OutputStream;
    :cond_1
    const-string v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    new-instance v0, Lcom/sun/mail/util/BASE64EncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 324
    :cond_2
    const-string v0, "quoted-printable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 325
    new-instance v0, Lcom/sun/mail/util/QPEncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/QPEncoderStream;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 326
    :cond_3
    const-string v0, "uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "x-uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "x-uue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 329
    :cond_4
    new-instance v0, Lcom/sun/mail/util/UUEncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 330
    :cond_5
    const-string v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "7bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "8bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unknown encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encode(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 3
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 357
    if-nez p1, :cond_1

    .line 370
    .end local p0    # "os":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-object p0

    .line 359
    .restart local p0    # "os":Ljava/io/OutputStream;
    :cond_1
    const-string v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    new-instance v0, Lcom/sun/mail/util/BASE64EncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 361
    :cond_2
    const-string v0, "quoted-printable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 362
    new-instance v0, Lcom/sun/mail/util/QPEncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/QPEncoderStream;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 363
    :cond_3
    const-string v0, "uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "x-uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "x-uue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 366
    :cond_4
    new-instance v0, Lcom/sun/mail/util/UUEncoderStream;

    invoke-direct {v0, p0, p2}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0

    .line 367
    :cond_5
    const-string v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "7bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "8bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unknown encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encodeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 413
    invoke-static {p0, v0, v0}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 444
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "word"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 569
    invoke-static {p0, v0, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 597
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "encodingWord"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 613
    invoke-static {p0}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/lang/String;)I

    move-result v8

    .line 614
    .local v8, "ascii":I
    if-ne v8, v5, :cond_0

    .line 651
    .end local p0    # "string":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 619
    .restart local p0    # "string":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_2

    .line 620
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v2

    .line 621
    .local v2, "jcharset":Ljava/lang/String;
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultMIMECharset()Ljava/lang/String;

    move-result-object p1

    .line 626
    :goto_1
    if-nez p2, :cond_1

    .line 627
    const/4 v0, 0x3

    if-eq v8, v0, :cond_3

    .line 628
    const-string p2, "Q"

    .line 634
    :cond_1
    :goto_2
    const-string v0, "B"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 635
    const/4 v1, 0x1

    .line 642
    .local v1, "b64":Z
    :goto_3
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 643
    .local v7, "outb":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v3, v0, 0x44

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "=?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v6, p3

    invoke-static/range {v0 .. v7}, Ljavax/mail/internet/MimeUtility;->doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V

    .line 651
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 623
    .end local v1    # "b64":Z
    .end local v2    # "jcharset":Ljava/lang/String;
    .end local v7    # "outb":Ljava/lang/StringBuffer;
    :cond_2
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "jcharset":Ljava/lang/String;
    goto :goto_1

    .line 630
    :cond_3
    const-string p2, "B"

    goto :goto_2

    .line 636
    :cond_4
    const-string v0, "Q"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 637
    const/4 v1, 0x0

    .restart local v1    # "b64":Z
    goto :goto_3

    .line 639
    .end local v1    # "b64":Z
    :cond_5
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unknown transfer encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fold(ILjava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "used"    # I
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/16 v9, 0x4c

    const/16 v8, 0x20

    const/16 v7, 0x9

    .line 910
    sget-boolean v6, Ljavax/mail/internet/MimeUtility;->foldText:Z

    if-nez v6, :cond_0

    move-object v6, p1

    .line 957
    :goto_0
    return-object v6

    .line 916
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "end":I
    :goto_1
    if-ltz v1, :cond_1

    .line 917
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 918
    .local v0, "c":C
    if-eq v0, v8, :cond_3

    if-eq v0, v7, :cond_3

    const/16 v6, 0xd

    if-eq v0, v6, :cond_3

    const/16 v6, 0xa

    if-eq v0, v6, :cond_3

    .line 921
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v1, v6, :cond_2

    .line 922
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 925
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, p0

    if-gt v6, v9, :cond_4

    move-object v6, p1

    .line 926
    goto :goto_0

    .line 916
    .restart local v0    # "c":C
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 929
    .end local v0    # "c":C
    :cond_4
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 930
    .local v5, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 931
    .local v3, "lastc":C
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, p0

    if-le v6, v9, :cond_6

    .line 932
    const/4 v4, -0x1

    .line 933
    .local v4, "lastspace":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 934
    if-eq v4, v10, :cond_7

    add-int v6, p0, v2

    if-le v6, v9, :cond_7

    .line 942
    :cond_5
    if-ne v4, v10, :cond_a

    .line 944
    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 945
    const-string p1, ""

    .line 946
    const/4 p0, 0x0

    .line 956
    .end local v2    # "i":I
    .end local v4    # "lastspace":I
    :cond_6
    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 957
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 936
    .restart local v2    # "i":I
    .restart local v4    # "lastspace":I
    :cond_7
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 937
    .restart local v0    # "c":C
    if-eq v0, v8, :cond_8

    if-ne v0, v7, :cond_9

    .line 938
    :cond_8
    if-eq v3, v8, :cond_9

    if-eq v3, v7, :cond_9

    .line 939
    move v4, v2

    .line 940
    :cond_9
    move v3, v0

    .line 933
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 949
    .end local v0    # "c":C
    :cond_a
    invoke-virtual {p1, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 950
    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 951
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 952
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 953
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 954
    const/4 p0, 0x1

    .line 955
    goto :goto_2
.end method

.method public static getDefaultJavaCharset()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1094
    sget-object v3, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 1099
    const/4 v0, 0x0

    .line 1101
    .local v0, "mimecs":Ljava/lang/String;
    :try_start_0
    const-string v3, "mail.mime.charset"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1103
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1104
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    .line 1105
    sget-object v3, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    .line 1126
    :goto_1
    return-object v3

    .line 1109
    :cond_0
    :try_start_1
    const-string v3, "file.encoding"

    const-string v4, "8859_1"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1126
    :cond_1
    :goto_2
    sget-object v3, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    goto :goto_1

    .line 1111
    :catch_0
    move-exception v2

    .line 1118
    .local v2, "sex":Ljava/lang/SecurityException;
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v3, Ljavax/mail/internet/MimeUtility$1NullInputStream;

    invoke-direct {v3}, Ljavax/mail/internet/MimeUtility$1NullInputStream;-><init>()V

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1120
    .local v1, "reader":Ljava/io/InputStreamReader;
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    .line 1121
    sget-object v3, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 1122
    const-string v3, "8859_1"

    sput-object v3, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    goto :goto_2

    .line 1102
    .end local v1    # "reader":Ljava/io/InputStreamReader;
    .end local v2    # "sex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method static getDefaultMIMECharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1133
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1135
    :try_start_0
    const-string v0, "mail.mime.charset"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1138
    :cond_0
    :goto_0
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1139
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;

    .line 1140
    :cond_1
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;

    return-object v0

    .line 1136
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getEncoding(Ljavax/activation/DataHandler;)Ljava/lang/String;
    .locals 8
    .param p0, "dh"    # Ljavax/activation/DataHandler;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 219
    const/4 v1, 0x0

    .line 220
    .local v1, "cType":Ljavax/mail/internet/ContentType;
    const/4 v3, 0x0

    .line 235
    .local v3, "encoding":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 236
    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v5

    invoke-static {v5}, Ljavax/mail/internet/MimeUtility;->getEncoding(Ljavax/activation/DataSource;)Ljava/lang/String;

    move-result-object v5

    .line 275
    :goto_0
    return-object v5

    .line 239
    :cond_0
    :try_start_0
    new-instance v2, Ljavax/mail/internet/ContentType;

    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v1    # "cType":Ljavax/mail/internet/ContentType;
    .local v2, "cType":Ljavax/mail/internet/ContentType;
    const-string v5, "text/*"

    invoke-virtual {v2, v5}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 246
    new-instance v0, Ljavax/mail/internet/AsciiOutputStream;

    invoke-direct {v0, v6, v6}, Ljavax/mail/internet/AsciiOutputStream;-><init>(ZZ)V

    .line 248
    .local v0, "aos":Ljavax/mail/internet/AsciiOutputStream;
    :try_start_1
    invoke-virtual {p0, v0}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    :goto_1
    invoke-virtual {v0}, Ljavax/mail/internet/AsciiOutputStream;->getAscii()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 258
    const-string v3, "base64"

    :goto_2
    move-object v1, v2

    .end local v2    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v1    # "cType":Ljavax/mail/internet/ContentType;
    move-object v5, v3

    .line 275
    goto :goto_0

    .line 240
    .end local v0    # "aos":Ljavax/mail/internet/AsciiOutputStream;
    :catch_0
    move-exception v4

    .line 241
    .local v4, "ex":Ljava/lang/Exception;
    const-string v5, "base64"

    goto :goto_0

    .line 252
    .end local v1    # "cType":Ljavax/mail/internet/ContentType;
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v0    # "aos":Ljavax/mail/internet/AsciiOutputStream;
    .restart local v2    # "cType":Ljavax/mail/internet/ContentType;
    :pswitch_0
    const-string v3, "7bit"

    .line 253
    goto :goto_2

    .line 255
    :pswitch_1
    const-string v3, "quoted-printable"

    .line 256
    goto :goto_2

    .line 264
    .end local v0    # "aos":Ljavax/mail/internet/AsciiOutputStream;
    :cond_1
    new-instance v0, Ljavax/mail/internet/AsciiOutputStream;

    sget-boolean v5, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z

    invoke-direct {v0, v7, v5}, Ljavax/mail/internet/AsciiOutputStream;-><init>(ZZ)V

    .line 267
    .restart local v0    # "aos":Ljavax/mail/internet/AsciiOutputStream;
    :try_start_2
    invoke-virtual {p0, v0}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 269
    :goto_3
    invoke-virtual {v0}, Ljavax/mail/internet/AsciiOutputStream;->getAscii()I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 270
    const-string v3, "7bit"

    goto :goto_2

    .line 272
    :cond_2
    const-string v3, "base64"

    goto :goto_2

    .line 249
    :catch_1
    move-exception v5

    goto :goto_1

    .line 268
    :catch_2
    move-exception v5

    goto :goto_3

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getEncoding(Ljavax/activation/DataSource;)Ljava/lang/String;
    .locals 9
    .param p0, "ds"    # Ljavax/activation/DataSource;

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "cType":Ljavax/mail/internet/ContentType;
    const/4 v5, 0x0

    .line 173
    .local v5, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 176
    .local v2, "encoding":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-interface {p0}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v0    # "cType":Ljavax/mail/internet/ContentType;
    .local v1, "cType":Ljavax/mail/internet/ContentType;
    :try_start_1
    invoke-interface {p0}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    .line 182
    const-string v7, "text/*"

    invoke-virtual {v1, v7}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v6

    .line 184
    .local v6, "isText":Z
    const/4 v8, -0x1

    if-nez v6, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-static {v5, v8, v7}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/io/InputStream;IZ)I

    move-result v4

    .line 185
    .local v4, "i":I
    packed-switch v4, :pswitch_data_0

    .line 193
    const-string v2, "base64"

    .line 199
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    move-object v0, v1

    .end local v1    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v0    # "cType":Ljavax/mail/internet/ContentType;
    move-object v7, v2

    .line 202
    .end local v4    # "i":I
    .end local v6    # "isText":Z
    :goto_3
    return-object v7

    .line 178
    :catch_0
    move-exception v3

    .line 179
    .local v3, "ex":Ljava/lang/Exception;
    :goto_4
    const-string v7, "base64"

    goto :goto_3

    .line 184
    .end local v0    # "cType":Ljavax/mail/internet/ContentType;
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v1    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v6    # "isText":Z
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 187
    .restart local v4    # "i":I
    :pswitch_0
    const-string v2, "7bit"

    .line 188
    goto :goto_1

    .line 190
    :pswitch_1
    const-string v2, "quoted-printable"

    .line 191
    goto :goto_1

    .line 200
    :catch_1
    move-exception v7

    goto :goto_2

    .line 178
    .end local v4    # "i":I
    .end local v6    # "isText":Z
    :catch_2
    move-exception v3

    move-object v0, v1

    .end local v1    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v0    # "cType":Ljavax/mail/internet/ContentType;
    goto :goto_4

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;

    .prologue
    .line 1026
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/MimeUtility;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;
    .param p2, "start"    # I

    .prologue
    const/4 v3, -0x1

    .line 1031
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1032
    .local v2, "len":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1033
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ltz v4, :cond_0

    .line 1038
    .end local v1    # "i":I
    .end local v2    # "len":I
    :goto_1
    return v1

    .line 1032
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 1036
    goto :goto_1

    .line 1037
    .end local v1    # "i":I
    .end local v2    # "len":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    move v1, v3

    .line 1038
    goto :goto_1
.end method

.method public static javaCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "charset"    # Ljava/lang/String;

    .prologue
    .line 1050
    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    .line 1055
    .end local p0    # "charset":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1054
    .restart local p0    # "charset":Ljava/lang/String;
    :cond_1
    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1055
    .local v0, "alias":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object p0, v0

    goto :goto_0
.end method

.method private static loadMappings(Lcom/sun/mail/util/LineInputStream;Ljava/util/Hashtable;)V
    .locals 6
    .param p0, "is"    # Lcom/sun/mail/util/LineInputStream;
    .param p1, "table"    # Ljava/util/Hashtable;

    .prologue
    .line 1246
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1251
    .local v0, "currLine":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1270
    .end local v0    # "currLine":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1247
    :catch_0
    move-exception v1

    .line 1248
    .local v1, "ioex":Ljava/io/IOException;
    goto :goto_1

    .line 1253
    .end local v1    # "ioex":Ljava/io/IOException;
    .restart local v0    # "currLine":Ljava/lang/String;
    :cond_2
    const-string v5, "--"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "--"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1258
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "#"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1263
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, " \t"

    invoke-direct {v3, v0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    .local v3, "tk":Ljava/util/StringTokenizer;
    :try_start_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1266
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1267
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1268
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public static mimeCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "charset"    # Ljava/lang/String;

    .prologue
    .line 1072
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    .line 1077
    .end local p0    # "charset":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1076
    .restart local p0    # "charset":Ljava/lang/String;
    :cond_1
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1077
    .local v0, "alias":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object p0, v0

    goto :goto_0
.end method

.method static final nonascii(I)Z
    .locals 1
    .param p0, "b"    # I

    .prologue
    .line 1433
    const/16 v0, 0x7f

    if-ge p0, v0, :cond_0

    const/16 v0, 0x20

    if-ge p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "specials"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x5c

    const/16 v11, 0xd

    const/16 v10, 0xa

    const/16 v9, 0x22

    .line 852
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 858
    .local v5, "len":I
    const/4 v6, 0x0

    .line 859
    .local v6, "needQuoting":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_9

    .line 860
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 861
    .local v0, "c":C
    if-eq v0, v9, :cond_0

    if-eq v0, v12, :cond_0

    if-eq v0, v11, :cond_0

    if-ne v0, v10, :cond_6

    .line 863
    :cond_0
    new-instance v7, Ljava/lang/StringBuffer;

    add-int/lit8 v8, v5, 0x3

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 864
    .local v7, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 865
    const/4 v8, 0x0

    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 866
    const/4 v4, 0x0

    .line 867
    .local v4, "lastc":I
    move v3, v2

    .local v3, "j":I
    :goto_1
    if-ge v3, v5, :cond_4

    .line 868
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 869
    .local v1, "cc":C
    if-eq v1, v9, :cond_1

    if-eq v1, v12, :cond_1

    if-eq v1, v11, :cond_1

    if-ne v1, v10, :cond_2

    .line 871
    :cond_1
    if-ne v1, v10, :cond_3

    if-ne v4, v11, :cond_3

    .line 875
    :cond_2
    :goto_2
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 876
    move v4, v1

    .line 867
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 874
    :cond_3
    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 878
    .end local v1    # "cc":C
    :cond_4
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 879
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 890
    .end local v0    # "c":C
    .end local v3    # "j":I
    .end local v4    # "lastc":I
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .end local p0    # "word":Ljava/lang/String;
    :cond_5
    :goto_3
    return-object p0

    .line 880
    .restart local v0    # "c":C
    .restart local p0    # "word":Ljava/lang/String;
    :cond_6
    const/16 v8, 0x20

    if-lt v0, v8, :cond_7

    const/16 v8, 0x7f

    if-ge v0, v8, :cond_7

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_8

    .line 882
    :cond_7
    const/4 v6, 0x1

    .line 859
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 885
    .end local v0    # "c":C
    :cond_9
    if-eqz v6, :cond_5

    .line 886
    new-instance v7, Ljava/lang/StringBuffer;

    add-int/lit8 v8, v5, 0x2

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 887
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 888
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x9

    const/16 v8, 0x20

    const/4 v7, 0x0

    .line 969
    sget-boolean v5, Ljavax/mail/internet/MimeUtility;->foldText:Z

    if-nez v5, :cond_1

    .line 1016
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 972
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 974
    .local v3, "sb":Ljava/lang/StringBuffer;
    :goto_1
    const-string v5, "\r\n"

    invoke-static {p0, v5}, Ljavax/mail/internet/MimeUtility;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .local v1, "i":I
    if-ltz v1, :cond_d

    .line 975
    move v4, v1

    .line 976
    .local v4, "start":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 977
    .local v2, "l":I
    add-int/lit8 v1, v1, 0x1

    .line 978
    if-ge v1, v2, :cond_2

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2

    .line 979
    add-int/lit8 v1, v1, 0x1

    .line 980
    :cond_2
    if-eqz v4, :cond_3

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_b

    .line 984
    :cond_3
    if-ge v1, v2, :cond_9

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    if-eq v0, v8, :cond_4

    if-ne v0, v9, :cond_9

    .line 985
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 986
    :goto_2
    if-ge v1, v2, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v8, :cond_5

    if-ne v0, v9, :cond_6

    .line 987
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 988
    :cond_6
    if-nez v3, :cond_7

    .line 989
    new-instance v3, Ljava/lang/StringBuffer;

    .end local v3    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 990
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_7
    if-eqz v4, :cond_8

    .line 991
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 992
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 994
    :cond_8
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 995
    goto :goto_1

    .line 998
    .end local v0    # "c":C
    :cond_9
    if-nez v3, :cond_a

    .line 999
    new-instance v3, Ljava/lang/StringBuffer;

    .end local v3    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1000
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_a
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1001
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1002
    goto :goto_1

    .line 1005
    :cond_b
    if-nez v3, :cond_c

    .line 1006
    new-instance v3, Ljava/lang/StringBuffer;

    .end local v3    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1007
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_c
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1008
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1009
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 1012
    .end local v2    # "l":I
    .end local v4    # "start":I
    :cond_d
    if-eqz v3, :cond_0

    .line 1013
    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1014
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method
