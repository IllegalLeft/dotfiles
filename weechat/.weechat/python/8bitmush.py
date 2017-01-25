SCRIPT_NAME = "telnet"
SCRIPT_AUTHOR = "sam@8bitMUSH"
SCRIPT_VERSION = "0.0"
SCRIPT_LICENSE = "none"
SCRIPT_DESC = "Something to connect to MUSHes via weechat hopefully."

import weechat
import re
import telnetlib

SERVER_ADDRESS = "8bit.fansi.org"
SERVER_PORT = 4201

weechat.register(SCRIPT_NAME, SCRIPT_AUTHOR, SCRIPT_VERSION, SCRIPT_LICENSE,
        SCRIPT_DESC, '', '')

# -------------------------------- Callbacks ----------------------------------
def telnet_buffer_input_cb(data, buffer, input_data):
    weechat.prnt(buffer, "%s%s" % (weechat.color("/yellow"), input_data))
    tnet.write(input_data.encode('CP437') + b"\n")
    return weechat.WEECHAT_RC_OK

def telnet_buffer_close_cb(data, buffer):
    tnet.write(b"QUIT\n")
    weechat.unhook_all()
    tnet.close()

    return weechat.WEECHAT_RC_OK

def telnet_read(data):
    rcv = tnet.read_all().decode("UTF-8")
    rcv = weechat.hook_modifier_exec("color_decode_ansi","1", rcv)
    return rcv

def telnet_read_cb(data, command, return_code, out, err):
    weechat.prnt(tnetbuffer, out)
    return weechat.WEECHAT_RC_OK

# ----------------------------------- Main ------------------------------------
tnetbuffer = weechat.buffer_new("8BitMUSH", "telnet_buffer_input_cb", "",
        "telnet_buffer_close_cb", "")
weechat.buffer_set(tnetbuffer, "8BitMUSH", "title for my buffer")
weechat.buffer_set(tnetbuffer, "localvar_set_no_log", "1")

# connect to 8BitMUSH
tnet = telnetlib.Telnet(SERVER_ADDRESS, SERVER_PORT)

#weechat.hook_timer(1, 0, 0, "telnet_read", "")
weechat.hook_process("func:telnet_read", 0, "telnet_read_cb", "")
